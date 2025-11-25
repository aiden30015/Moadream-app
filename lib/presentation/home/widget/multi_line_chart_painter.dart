import 'package:flutter/material.dart';
import 'package:hanjeon/core/design_system/color.dart';
import 'package:hanjeon/core/design_system/typography.dart';

// ============================================================
// 다중 라인 차트 데이터
// ============================================================
class LineChartData {
  final List<double> values;
  final Color color;
  final List<String> labels;

  LineChartData({
    required this.values,
    required this.color,
    required this.labels,
  });
}

// ============================================================
// 다중 라인 차트 Painter
// ============================================================
class MultiLineChartPainter extends CustomPainter {
  final List<LineChartData> lines;
  final List<String> xLabels;

  MultiLineChartPainter({required this.lines, required this.xLabels});

  @override
  void paint(Canvas canvas, Size size) {
    final chartArea = Rect.fromLTRB(20, 20, size.width - 20, size.height - 30);

    _drawBackgroundLines(canvas, chartArea);

    // 각 라인에 영역 할당 (위에서 아래로)
    for (int i = 0; i < lines.length; i++) {
      _drawLine(canvas, chartArea, lines[i], i);
      _drawPoints(canvas, chartArea, lines[i], i);
      _drawValueLabels(canvas, chartArea, lines[i], i);
    }

    _drawXLabels(canvas, chartArea, size);
  }

  void _drawBackgroundLines(Canvas canvas, Rect area) {
    final paint = Paint()
      ..color = MoaColor.gray50
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    for (int i = 0; i <= 6; i++) {
      final y = area.top + (area.height * i / 6);
      canvas.drawLine(Offset(area.left, y), Offset(area.right, y), paint);
    }
  }

  void _drawLine(
    Canvas canvas,
    Rect area,
    LineChartData lineData,
    int lineIndex,
  ) {
    final normalizedValues = _normalizeForLine(lineData.values, lineIndex);
    final points = _calculatePoints(area, normalizedValues);

    final linePath = Path();
    linePath.moveTo(points[0].dx, points[0].dy);
    for (int i = 1; i < points.length; i++) {
      linePath.lineTo(points[i].dx, points[i].dy);
    }

    final linePaint = Paint()
      ..color = lineData.color
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    canvas.drawPath(linePath, linePaint);
  }

  void _drawPoints(
    Canvas canvas,
    Rect area,
    LineChartData lineData,
    int lineIndex,
  ) {
    final normalizedValues = _normalizeForLine(lineData.values, lineIndex);
    final points = _calculatePoints(area, normalizedValues);

    final filledPaint = Paint()
      ..color = lineData.color
      ..style = PaintingStyle.fill;

    final hollowFillPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final hollowStrokePaint = Paint()
      ..color = lineData.color
      ..strokeWidth = 2.5
      ..style = PaintingStyle.stroke;

    for (int i = 0; i < points.length; i++) {
      if (i == points.length - 1) {
        canvas.drawCircle(points[i], 6, hollowFillPaint);
        canvas.drawCircle(points[i], 6, hollowStrokePaint);
      } else {
        canvas.drawCircle(points[i], 6, filledPaint);
      }
    }
  }

  void _drawValueLabels(
    Canvas canvas,
    Rect area,
    LineChartData lineData,
    int lineIndex,
  ) {
    final normalizedValues = _normalizeForLine(lineData.values, lineIndex);
    final points = _calculatePoints(area, normalizedValues);

    for (int i = 0; i < points.length; i++) {
      final textPainter = TextPainter(
        text: TextSpan(
          text: lineData.labels[i],
          style: MoaTypography.caption(lineData.color),
        ),
        textDirection: TextDirection.ltr,
      );

      textPainter.layout();

      // 포인트가 차트 상단 절반에 있으면 라벨을 아래에, 하단 절반에 있으면 위에 표시
      final isUpperHalf = points[i].dy < (area.top + area.height / 2);

      final offset = Offset(
        points[i].dx - textPainter.width / 2,
        isUpperHalf
            ? points[i].dy +
                  8 // 상단에 있으면 아래에 표시
            : points[i].dy - textPainter.height - 8, // 하단에 있으면 위에 표시
      );

      textPainter.paint(canvas, offset);
    }
  }

  void _drawXLabels(Canvas canvas, Rect area, Size size) {
    final points = _calculatePoints(area, [0.5, 0.5, 0.5]);

    for (int i = 0; i < xLabels.length; i++) {
      final textPainter = TextPainter(
        text: TextSpan(
          text: xLabels[i],
          style: MoaTypography.caption(MoaColor.gray700),
        ),
        textDirection: TextDirection.ltr,
      );

      textPainter.layout();

      final offset = Offset(
        points[i].dx - textPainter.width / 2,
        area.bottom + 10,
      );

      textPainter.paint(canvas, offset);
    }
  }

  List<double> _normalizeForLine(List<double> values, int lineIndex) {
    final totalLines = lines.length;

    // 각 라인에 할당된 영역 계산 (0.0~1.0을 라인 개수로 분할)
    final segmentHeight = 1.0 / totalLines;
    final lineMin = segmentHeight * (totalLines - 1 - lineIndex); // 위에서부터 할당

    // 해당 라인 내에서만 정규화
    final maxVal = values.reduce((a, b) => a > b ? a : b);
    final minVal = values.reduce((a, b) => a < b ? a : b);
    final range = maxVal - minVal;

    if (range == 0) {
      // 변화가 없으면 영역 중앙에 배치
      return List.filled(values.length, lineMin + segmentHeight * 0.5);
    }

    // 영역 내부에 여백을 두고 정규화 (상하 25% 여백으로 증가)
    final usableHeight = segmentHeight * 0.5;
    final topPadding = segmentHeight * 0.25;

    return values.map((v) {
      final normalized = (v - minVal) / range; // 0~1 사이로 정규화
      return lineMin + topPadding + (normalized * usableHeight);
    }).toList();
  }

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

  @override
  bool shouldRepaint(MultiLineChartPainter oldDelegate) {
    return oldDelegate.lines != lines || oldDelegate.xLabels != xLabels;
  }
}
