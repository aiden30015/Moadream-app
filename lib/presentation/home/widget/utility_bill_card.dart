import 'package:flutter/material.dart';
import 'package:hanjeon/core/design_system/color.dart';
import 'package:hanjeon/core/design_system/icon.dart';
import 'package:hanjeon/core/design_system/typography.dart';
import 'package:hanjeon/presentation/home/widget/home_container.dart';
import 'package:hanjeon/presentation/main/widget/charge_card.dart';

// ============================================================
// 차트 데이터 모델
// ============================================================
class ChartData {
  final List<double> values;
  final List<String> labels;

  ChartData({required this.values, required this.labels})
    : assert(values.length == labels.length, '값과 라벨 개수가 일치해야 합니다');

  int get length => values.length;

  double get maxValue => values.reduce((a, b) => a > b ? a : b);
  double get minValue => values.reduce((a, b) => a < b ? a : b);

  // 0~1 사이로 정규화 (여유있게)
  List<double> normalize() {
    final range = maxValue - minValue;
    if (range == 0) return List.filled(length, 0.5);

    // 범위에 여유를 주어 그래프가 덜 극단적으로 보이도록 함
    final padding = range * 0.7;
    final expandedMin = minValue - padding;
    final expandedRange = range + (padding * 2);

    return values.map((v) => (v - expandedMin) / expandedRange).toList();
  }
}

// ============================================================
// 공과금 카드 (전기/수도/가스)
// ============================================================
class UtilityBillCard extends StatefulWidget {
  final ChartData data;
  final String userName;
  final String currentMonth;
  final double currentAmount;
  final Widget icon;
  final double currentUsage;
  final String title; // "전기요금", "수도요금", "가스요금"
  final String percentChange; // "+3.5%", "-2.1%" 등
  final Color buttonColor;

  const UtilityBillCard({
    super.key,
    required this.data,
    required this.userName,
    required this.currentMonth,
    required this.currentAmount,
    required this.icon,
    required this.currentUsage,
    required this.title,
    required this.percentChange,
    this.buttonColor = MoaColor.yellow200,
  });

  @override
  State<UtilityBillCard> createState() => _UtilityBillCardState();
}

class _UtilityBillCardState extends State<UtilityBillCard>
    with AutomaticKeepAliveClientMixin {
  bool _showRealtimeView = false;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return HomeContainer(
      height: 336,
      child: _showRealtimeView ? _buildRealtimeView() : _buildChartView(),
    );
  }

  Widget _buildChartView() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeader(),
        const SizedBox(height: 24),
        SizedBox(height: 148, child: _buildChart()),
        Spacer(),
        _buildButtons(),
      ],
    );
  }

  Widget _buildRealtimeView() {
    // currentAmount가 이번달(11월), data.values.last가 전달(10월)
    final currentValue = widget.currentAmount;
    final previousValue = widget.data.values.last;

    // 최대값의 1.5배를 기준으로 하여 여유있게 표시
    final gaugeMaxValue = widget.data.maxValue * 1.5;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${widget.userName}님의 실시간 사용량',
              style: MoaTypography.subTitle3(MoaColor.gray700),
            ),
            widget.icon,
          ],
        ),
        const SizedBox(height: 24),
        SizedBox(
          height: 148,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 240,
                      height: 120,
                      child: CustomPaint(
                        painter: SemiCircleGaugePainter(
                          previousValue: widget.data.values.length >= 2
                              ? (previousValue / gaugeMaxValue).clamp(0.0, 1.0)
                              : 0.0,
                          currentValue: (currentValue / gaugeMaxValue).clamp(
                            0.0,
                            1.0,
                          ),
                          color: widget.buttonColor,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                  color: widget.buttonColor.withOpacity(0.25),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '전달 사용량',
                                style: MoaTypography.caption(MoaColor.gray300),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                  color: widget.buttonColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '이번달 사용량',
                                style: MoaTypography.caption(MoaColor.gray300),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Spacer(),
        _buildButtons(),
      ],
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${widget.userName}님의 ${widget.currentMonth} ${widget.title}',
                style: MoaTypography.subTitle3(MoaColor.gray700),
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    _formatNumber(widget.currentAmount.toInt()),
                    style: MoaTypography.subTitle1(MoaColor.gray800),
                  ),
                  const SizedBox(width: 8),
                  MoaIcon.down_arrow(),
                  const SizedBox(width: 4),
                  Text(
                    widget.percentChange,
                    style: MoaTypography.body2(MoaColor.blue600),
                  ),
                ],
              ),
            ],
          ),
        ),
        widget.icon,
      ],
    );
  }

  Widget _buildChart() {
    return CustomPaint(
      size: const Size(double.infinity, 148),
      painter: ChargeCard(data: widget.data, color: widget.buttonColor),
    );
  }

  Widget _buildButtons() {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              // 상세 요금서 보기
            },
            child: Container(
              height: 35,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              decoration: BoxDecoration(
                color: widget.buttonColor,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        '상세 요금서 보기',
                        style: MoaTypography.body2(MoaColor.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  MoaIcon.detail_coin_outline(),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _showRealtimeView = !_showRealtimeView;
              });
            },
            child: Container(
              height: 35,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              decoration: BoxDecoration(
                color: widget.buttonColor,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        '실시간 사용량 보기',
                        style: MoaTypography.body2(MoaColor.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  MoaIcon.stream_charge(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

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
}

// ============================================================
// SemiCircleGaugePainter
// ============================================================
class SemiCircleGaugePainter extends CustomPainter {
  final double previousValue; // 0.0 ~ 1.0
  final double currentValue; // 0.0 ~ 1.0
  final Color color;

  SemiCircleGaugePainter({
    required this.previousValue,
    required this.currentValue,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height);
    final radius = size.width / 2.2;
    final strokeWidth = 30.0;

    // 배경 반원 (#F6F4EE)
    final bgPaint = Paint()
      ..color = const Color(0xFFF6F4EE)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      3.14159,
      3.14159,
      false,
      bgPaint,
    );

    // 전달 사용량 반원 (연한 색)
    final previousPaint = Paint()
      ..color = color.withOpacity(0.25)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      3.14159,
      3.14159 * previousValue,
      false,
      previousPaint,
    );

    // 이번달 사용량 반원 (진한 색)
    final currentPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      3.14159,
      3.14159 * currentValue,
      false,
      currentPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
