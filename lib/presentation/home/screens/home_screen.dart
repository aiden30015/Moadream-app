import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hanjeon/core/design_system/color.dart';
import 'package:hanjeon/core/design_system/icon.dart';
import 'package:hanjeon/core/design_system/typography.dart';
import 'package:hanjeon/presentation/home/controllers/usage_controller.dart';
import 'package:hanjeon/presentation/home/widget/home_container.dart';
import 'package:hanjeon/presentation/home/widget/utility_bill_card.dart';
import 'package:hanjeon/presentation/home/widget/month_analysis_charge_card.dart';
import 'package:hanjeon/presentation/home/widget/multi_line_chart_painter.dart';
import 'package:hanjeon/presentation/user/controllers/user_controller.dart';
import 'package:hanjeon/presentation/profile/controllers/address_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  static const double _backgroundTransitionOffset = 300.0;
  static const double _backgroundInitialTop = 200.0;
  static const double _parallaxFactor = 0.5;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();

    return Stack(
      children: [
        AnimatedBuilder(
          animation: scrollController,
          builder: (context, child) {
            final offset = scrollController.hasClients
                ? scrollController.offset
                : 0.0;
            final color = offset > _backgroundTransitionOffset
                ? MoaColor.backgroundColor
                : MoaColor.blue500;
            return Container(color: color);
          },
        ),
        AnimatedBuilder(
          animation: scrollController,
          builder: (context, child) {
            final offset = scrollController.hasClients
                ? scrollController.offset
                : 0.0;
            return Positioned(
              top: _backgroundInitialTop - (offset * _parallaxFactor),
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: MoaColor.backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
              ),
            );
          },
        ),
        _buildScrollableContent(scrollController, ref),
      ],
    );
  }

  Widget _buildScrollableContent(ScrollController controller, WidgetRef ref) {
    return SafeArea(
      child: SingleChildScrollView(
        controller: controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(32),
              child: _buildUtilityCards(ref),
            ),
            const SizedBox(height: 24),
            _buildRecommendedMenu(),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: _buildBenefitBanner(),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: _buildMonthlyAnalysis(ref),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: _buildAiReport(ref),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildUtilityCards(WidgetRef ref) {
    final monthlyAverageAsync = ref.watch(monthlyAverageProvider);
    final userDataAsync = ref.watch(userDataProvider);
    final billComparisonAsync = ref.watch(billComparisonProvider);
    final addressList = ref.watch(addressListProvider);
    final selectedAddressIndex = useState(0);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: ref.context,
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                  ),
                  builder: (context) {
                    return SafeArea(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 16),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 24),
                              child: Container(
                                width: 40,
                                height: 4,
                                decoration: BoxDecoration(
                                  color: MoaColor.gray300,
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            '주소 선택',
                            style: MoaTypography.subTitle3(Colors.black),
                          ),
                          const SizedBox(height: 16),
                          ...List.generate(
                            addressList.length,
                            (index) => InkWell(
                              onTap: () {
                                selectedAddressIndex.value = index;
                                Navigator.pop(context);
                              },
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 24,
                                  vertical: 16,
                                ),
                                decoration: BoxDecoration(
                                  color: selectedAddressIndex.value == index
                                      ? MoaColor.blue200.withOpacity(0.3)
                                      : Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      addressList[index]['name']!,
                                      style: MoaTypography.subTitle4(
                                        selectedAddressIndex.value == index
                                            ? MoaColor.blue500
                                            : MoaColor.gray800,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      addressList[index]['address']!,
                                      style: MoaTypography.body2(
                                        MoaColor.gray600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Row(
                children: [
                  Text(
                    addressList[selectedAddressIndex.value]['name']!,
                    style: MoaTypography.subTitle4(Colors.white),
                  ),
                  const SizedBox(width: 8),
                  MoaIcon.down_arrow(color: Colors.white),
                ],
              ),
            ),
            Consumer(
              builder: (context, ref, child) {
                final budget = ref.watch(budgetProvider);
                return Text(
                  '총 예산: ${budget.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},')}원',
                  style: MoaTypography.body1(Colors.white),
                );
              },
            ),
          ],
        ),
        const SizedBox(height: 16),
        _buildUtilityCardsContent(
          ref,
          monthlyAverageAsync,
          userDataAsync,
          billComparisonAsync,
        ),
      ],
    );
  }

  Widget _buildUtilityCardsContent(
    WidgetRef ref,
    AsyncValue monthlyAverageAsync,
    AsyncValue userDataAsync,
    AsyncValue billComparisonAsync,
  ) {
    return monthlyAverageAsync.when(
      loading: () => const Center(child: Text('로딩중...')),
      error: (error, stack) => Center(child: Text('데이터를 불러올 수 없습니다: $error')),
      data: (monthlyList) {
        // 각 유틸리티별로 최근 3개 데이터 추출 (월 상관없이)
        final getUtilityHistory = (String type) {
          final filtered = monthlyList
              .where((u) => u.utilityType == type)
              .toList();
          if (filtered.length >= 3) {
            return filtered.sublist(filtered.length - 3);
          }
          return filtered;
        };

        final electricityHistory = getUtilityHistory('ELECTRICITY');
        final waterHistory = getUtilityHistory('WATER');
        final gasHistory = getUtilityHistory('GAS');

        return billComparisonAsync.when(
          loading: () => const SizedBox(
            height: 280,
            child: Center(child: CircularProgressIndicator()),
          ),
          error: (error, stack) {
            print('⚠️ billComparison 에러 무시하고 계속 진행: $error');

            return SizedBox(
              width: double.infinity,
              height: 336,
              child: PageView(
                controller: PageController(viewportFraction: 1.0),
                children: [
                  UtilityBillCard(
                    data: ChartData(
                      values: electricityHistory
                          .map((e) => e.averageCharge)
                          .toList(),
                      labels: electricityHistory
                          .map((e) => '${e.month}월')
                          .toList(),
                    ),
                    userName: userDataAsync.maybeWhen(
                      data: (user) => user.name,
                      orElse: () => '사용자',
                    ),
                    currentMonth: '${electricityHistory.last.month}월',
                    currentAmount: electricityHistory.last.averageCharge,
                    icon: MoaIcon.electric(),
                    currentUsage: electricityHistory.last.averageUsage,
                    title: '전기요금',
                    percentChange: '데이터 없음',
                    buttonColor: MoaColor.yellow200,
                  ),
                  UtilityBillCard(
                    data: ChartData(
                      values: waterHistory.map((e) => e.averageCharge).toList(),
                      labels: waterHistory.map((e) => '${e.month}월').toList(),
                    ),
                    userName: userDataAsync.maybeWhen(
                      data: (user) => user.name,
                      orElse: () => '사용자',
                    ),
                    currentMonth: '${waterHistory.last.month}월',
                    currentAmount: waterHistory.last.averageCharge,
                    icon: MoaIcon.water(),
                    currentUsage: waterHistory.last.averageUsage,
                    title: '수도요금',
                    percentChange: '데이터 없음',
                    buttonColor: MoaColor.blue500,
                  ),
                  UtilityBillCard(
                    data: ChartData(
                      values: gasHistory.map((e) => e.averageCharge).toList(),
                      labels: gasHistory.map((e) => '${e.month}월').toList(),
                    ),
                    userName: userDataAsync.maybeWhen(
                      data: (user) => user.name,
                      orElse: () => '사용자',
                    ),
                    currentMonth: '${gasHistory.last.month}월',
                    currentAmount: gasHistory.last.averageCharge,
                    icon: MoaIcon.cloud(),
                    currentUsage: gasHistory.last.averageUsage,
                    title: '가스요금',
                    percentChange: '데이터 없음',
                    buttonColor: MoaColor.green,
                  ),
                ],
              ),
            );
          },
          data: (billData) => SizedBox(
            height: 336,
            child: PageView(
              controller: PageController(viewportFraction: 1.0),
              children: [
                UtilityBillCard(
                  data: ChartData(
                    values: [96010.0, 110530.0, 74460.0],
                    labels: ['8월', '9월', '10월'],
                  ),
                  userName: userDataAsync.maybeWhen(
                    data: (user) => user.name,
                    orElse: () => '사용자',
                  ),
                  currentMonth: '10월',
                  currentAmount: 74460.0, // 10월 값
                  icon: MoaIcon.electric(),
                  currentUsage: 219.0, // 10월 사용량 (예시)
                  title: '전기요금',
                  percentChange: '39.6%',
                  buttonColor: MoaColor.yellow200,
                ),
                UtilityBillCard(
                  data: ChartData(
                    values: [8342.0, 7893.0, 8950.0],
                    labels: ['8월', '9월', '10월'],
                  ),
                  userName: userDataAsync.maybeWhen(
                    data: (user) => user.name,
                    orElse: () => '사용자',
                  ),
                  currentMonth: '10월',
                  currentAmount: 8950.0, // 10월 값
                  icon: MoaIcon.water(),
                  currentUsage: 12.5, // 10월 사용량 (예시)
                  title: '수도요금',
                  percentChange: '39.7%',
                  buttonColor: MoaColor.blue500,
                ),
                UtilityBillCard(
                  data: ChartData(
                    values: [54673.0, 53490.0, 64845.0],
                    labels: ['8월', '9월', '10월'],
                  ),
                  userName: userDataAsync.maybeWhen(
                    data: (user) => user.name,
                    orElse: () => '사용자',
                  ),
                  currentMonth: '10월',
                  currentAmount: 64845.0, // 10월 값
                  icon: MoaIcon.cloud(),
                  currentUsage: 45.8, // 10월 사용량 (예시)
                  title: '가스요금',
                  percentChange: '40.0%',
                  buttonColor: MoaColor.green,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildRecommendedMenu() {
    const menuItems1 = ['자가 검침', 'ai 상담', '주소 변경', '카드 혜택'];
    const menuItems2 = ['수도계량기 체크', '자동이체', '예산설정', 'ai컨설팅'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              '자주 찾는 메뉴',
              style: MoaTypography.subTitle3(Colors.black),
            ),
          ),
        ),
        const SizedBox(height: 16),
        _buildMenuRow(menuItems1),
        const SizedBox(height: 12),
        _buildMenuRow(menuItems2),
      ],
    );
  }

  Widget _buildMenuRow(List<String> items) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        children: items
            .map(
              (item) => Padding(
                padding: EdgeInsets.only(right: item == items.last ? 0 : 12),
                child: _buildMenuItem(item),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildMenuItem(String label) {
    return Container(
      height: 43,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: MoaColor.white,
        borderRadius: BorderRadius.circular(47),
      ),
      child: Center(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            label,
            style: MoaTypography.body2(MoaColor.gray800),
            maxLines: 1,
          ),
        ),
      ),
    );
  }

  Widget _buildBenefitBanner() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text('이달의 혜택소식', style: MoaTypography.subTitle3(Colors.black)),
        ),
        const SizedBox(height: 16),
        Container(
          width: double.infinity,
          height: 120,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [MoaColor.blue300, MoaColor.blue500, MoaColor.blue300],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              MoaIcon.benefits_news(),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        '한전 에너지 캐시백으로\n전기요금 20% 이상 아끼자!',
                        style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: MoaColor.backgroundColor,
                          height: 1.3,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    const SizedBox(height: 4),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '카드 추천 바로가기',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w400,
                              fontSize: 13.5,
                              color: MoaColor.backgroundColor,
                            ),
                          ),
                          MoaIcon.arrow(color: MoaColor.backgroundColor),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMonthlyAnalysis(WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            '이달의 요금 분석',
            style: MoaTypography.subTitle3(Colors.black),
          ),
        ),
        const SizedBox(height: 16),
        HomeContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: ref
                    .watch(userDataProvider)
                    .maybeWhen(
                      data: (user) => Text(
                        '${user.name}님의 10월 요금 분석',
                        style: MoaTypography.subTitle3(MoaColor.gray700),
                      ),
                      orElse: () => Text(
                        '사용자님의 10월 요금 분석',
                        style: MoaTypography.subTitle3(MoaColor.gray700),
                      ),
                    ),
              ),
              const SizedBox(height: 10),
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    style: MoaTypography.subTitle1(MoaColor.gray700),
                    children: [
                      const TextSpan(text: '저번달 보다 '),
                      TextSpan(
                        text: '13.8%',
                        style: MoaTypography.subTitle1(MoaColor.blue500),
                      ),
                      const TextSpan(text: ' 요금 절약했어요!'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              RepaintBoundary(
                child: SizedBox(
                  height: 275,
                  child: CustomPaint(
                    size: const Size(double.infinity, 275),
                    painter: MultiLineChartPainter(
                      lines: [
                        LineChartData(
                          values: [96010.0, 110530.0, 74460.0],
                          color: MoaColor.yellow200,
                          labels: ['96,010원', '110,530원', '74,460원'],
                        ),
                        LineChartData(
                          values: [8342.0, 7893.0, 8950.0],
                          color: MoaColor.blue500,
                          labels: ['8,342원', '7,893원', '8,950원'],
                        ),
                        LineChartData(
                          values: [54673.0, 53490.0, 64845.0],
                          color: MoaColor.green,
                          labels: ['54,673원', '53,490원', '64,845원'],
                        ),
                      ],
                      xLabels: ['8월', '9월', '10월'],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: MonthAnalysisChargeCard(
                      title: '저번달에 낸 금액',
                      amount: '171,913원',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: MonthAnalysisChargeCard(
                      title: '이번달에 낼 금액',
                      amount: '148,435원',
                      icon: MoaIcon.down_arrow(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAiReport(WidgetRef ref) {
    final recommendationAsync = ref.watch(recommendationProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            '이달의 ai 리포트',
            style: MoaTypography.subTitle3(Colors.black),
          ),
        ),
        const SizedBox(height: 16),
        recommendationAsync.when(
          loading: () => HomeContainer(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MoaIcon.chat_outline(),
                const SizedBox(width: 7),
                const Expanded(child: CircularProgressIndicator()),
              ],
            ),
          ),
          error: (error, stack) => HomeContainer(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MoaIcon.chat_outline(),
                const SizedBox(width: 7),
                Expanded(
                  child: Text(
                    '날씨가 추워지는 요즘 보일러를 트는 가구들이 많아졌어요! 외출 시 보일러를 외출로 바꿔준다면 가스비 절감에 큰 도움이 된답니다 :)',
                    style: TextStyle(
                      fontFamily: 'SUIT',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
          data: (recommendationText) => HomeContainer(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MoaIcon.chat_outline(),
                const SizedBox(width: 7),
                Expanded(
                  child: Text(
                    recommendationText,
                    style: TextStyle(
                      fontFamily: 'SUIT',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
