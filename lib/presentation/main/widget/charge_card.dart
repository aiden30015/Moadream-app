import 'package:flutter/material.dart';
import 'package:hanjeon/core/design_system/color.dart';
import 'package:hanjeon/core/design_system/typography.dart';
import 'package:hanjeon/presentation/home/widget/utility_bill_card.dart';

class ChargeCard extends CustomPainter {
  final ChartData data;
  final Color color;

  ChargeCard({required this.data, this.color = MoaColor.yellow200});

  @override
  void paint(Canvas canvas, Size size) {
    final chartArea = Rect.fromLTRB(20, 0, size.width - 20, size.height);

    _drawFillArea(canvas, chartArea);
    _drawBackgroundLines(canvas, chartArea);
    _drawLine(canvas, chartArea);
    _drawPoints(canvas, chartArea);
    _drawValueLabels(canvas, chartArea);
    _drawMonthLabels(canvas, chartArea, size);
  }

  // 배경 가로선
  void _drawBackgroundLines(Canvas canvas, Rect area) {
    final paint = Paint()
      ..color = MoaColor.gray50
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    // 3개의 가로선
    for (int i = 0; i <= 2; i++) {
      final y = area.top + (area.height * i / 2);
      canvas.drawLine(Offset(area.left, y), Offset(area.right, y), paint);
    }
  }

  // 영역 채우기
  void _drawFillArea(Canvas canvas, Rect area) {
    final normalizedValues = data.normalize();
    final points = _calculatePoints(area, normalizedValues);

    final fillPath = Path();
    fillPath.moveTo(area.left, area.bottom); // 시작점: 왼쪽 아래
    fillPath.lineTo(points[0].dx, points[0].dy); // 첫 번째 포인트로

    for (int i = 1; i < points.length; i++) {
      fillPath.lineTo(points[i].dx, points[i].dy);
    }

    fillPath.lineTo(area.right, area.bottom); // 오른쪽 아래로
    fillPath.close(); // 경로 닫기

    final fillPaint = Paint()
      ..color = color.withOpacity(0.2)
      ..style = PaintingStyle.fill;

    canvas.drawPath(fillPath, fillPaint);
  }

  // 라인 그리기
  void _drawLine(Canvas canvas, Rect area) {
    final normalizedValues = data.normalize();
    final points = _calculatePoints(area, normalizedValues);

    final linePath = Path();
    linePath.moveTo(points[0].dx, points[0].dy);
    for (int i = 1; i < points.length; i++) {
      linePath.lineTo(points[i].dx, points[i].dy);
    }

    final linePaint = Paint()
      ..color = color
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    canvas.drawPath(linePath, linePaint);
  }

  // 포인트 그리기
  void _drawPoints(Canvas canvas, Rect area) {
    final normalizedValues = data.normalize();
    final points = _calculatePoints(area, normalizedValues);

    final filledPaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final hollowFillPaint = Paint()
      ..color = MoaColor.white
      ..style = PaintingStyle.fill;

    final hollowStrokePaint = Paint()
      ..color = color
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke;

    for (int i = 0; i < points.length; i++) {
      final point = points[i];

      if (i == points.length - 1) {
        // 마지막 포인트는 속 빈 원
        canvas.drawCircle(point, 6, hollowFillPaint);
        canvas.drawCircle(point, 6, hollowStrokePaint);
      } else {
        // 나머지는 채워진 원
        canvas.drawCircle(point, 6, filledPaint);
      }
    }
  }

  // 값 텍스트 그리기
  void _drawValueLabels(Canvas canvas, Rect area) {
    final normalizedValues = data.normalize();
    final points = _calculatePoints(area, normalizedValues);

    for (int i = 0; i < points.length; i++) {
      final point = points[i];
      final value = data.values[i];
      final formattedValue = _formatNumber(value.toInt());

      // 세로 위치 조정 (포인트 위)
      final yOffset = -16.0;

      _drawText(canvas, formattedValue, point.translate(0, yOffset), color);
    }
  }

  // 월 라벨 그리기
  void _drawMonthLabels(Canvas canvas, Rect area, Size size) {
    final normalizedValues = data.normalize();
    final points = _calculatePoints(area, normalizedValues);

    for (int i = 0; i < points.length; i++) {
      final point = points[i];
      final label = data.labels[i];

      _drawText(canvas, label, Offset(point.dx, area.bottom + 15), color);
    }
  }

  // 좌표 계산
  List<Offset> _calculatePoints(Rect area, List<double> normalizedValues) {
    final points = <Offset>[];
    final count = normalizedValues.length;

    for (int i = 0; i < count; i++) {
      final x = area.left + (area.width * i / (count - 1));
      final y = area.bottom - (area.height * normalizedValues[i]);
      points.add(Offset(x, y));
    }

    return points;
  }

  // 텍스트 그리기 헬퍼
  void _drawText(Canvas canvas, String text, Offset position, Color color) {
    final textPainter = TextPainter(
      text: TextSpan(text: text, style: MoaTypography.caption(color)),
      textDirection: TextDirection.ltr,
    );

    textPainter.layout();

    final offset = Offset(
      position.dx - textPainter.width / 2,
      position.dy - textPainter.height / 2,
    );

    textPainter.paint(canvas, offset);
  }

  // 숫자 포맷팅
  String _formatNumber(int number) {
    final str = number.toString();
    final buffer = StringBuffer();
    for (int i = 0; i < str.length; i++) {
      if (i > 0 && (str.length - i) % 3 == 0) {
        buffer.write(',');
      }
      buffer.write(str[i]);
    }
    return '${buffer.toString()}원';
  }

  @override
  bool shouldRepaint(ChargeCard oldDelegate) {
    return oldDelegate.data.values != data.values;
  }
}
