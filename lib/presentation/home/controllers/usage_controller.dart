import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hanjeon/core/network/dio_client.dart';
import 'package:hanjeon/data/dto/bill/bill.dart';
import 'package:hanjeon/data/dto/bill/bill_comparison.dart';
import 'package:hanjeon/data/dto/settings/settings.dart';
import 'package:hanjeon/data/dto/usage/monthly_average.dart';
import 'package:hanjeon/data/repositories/usage_api_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final usageApiClientProvider = Provider<UsageApiClient>((ref) {
  return UsageApiClient(DioClient.instance);
});

final monthlyAverageProvider = FutureProvider<List<MonthlyAverage>>((
  ref,
) async {
  const storage = FlutterSecureStorage();
  final userIdStr = await storage.read(key: 'userId');

  if (userIdStr == null) {
    throw Exception('userId not found in storage');
  }

  final userId = int.parse(userIdStr);
  final apiClient = ref.watch(usageApiClientProvider);

  final response = await apiClient.getMonthlyAverage(userId);

  print('✅ monthlyAverage 응답: ${response.data}');
  return response.data;
});

final billComparisonProvider = FutureProvider<BillComparison>((ref) async {
  const storage = FlutterSecureStorage();
  final userIdStr = await storage.read(key: 'userId');

  if (userIdStr == null) {
    throw Exception('userId not found in storage');
  }

  final userId = int.parse(userIdStr);
  final apiClient = ref.watch(usageApiClientProvider);

  // 현재 월을 "2025-01-01" 형식으로 전송
  final now = DateTime.now();
  final currentMonth = '${now.year}-${now.month.toString().padLeft(2, '0')}-01';

  try {
    final response = await apiClient.getBillComparison(userId, currentMonth);
    print('✅ billComparison 성공: ${response.data}');
    return response.data;
  } catch (e) {
    print('❌ billComparison 에러: $e');
    rethrow;
  }
});

final recommendationProvider = FutureProvider<String>((ref) async {
  const storage = FlutterSecureStorage();
  final userIdStr = await storage.read(key: 'userId');

  if (userIdStr == null) {
    throw Exception('userId not found in storage');
  }

  final userId = int.parse(userIdStr);
  final apiClient = ref.watch(usageApiClientProvider);

  try {
    final response = await apiClient.getRecommendations(userId);
    print('✅ recommendations 성공: ${response.data}');

    // 가장 최근 추천 텍스트 반환
    if (response.data.isNotEmpty) {
      return response.data.first.recommendationText;
    }
    return '날씨가 추워지는 요즘 보일러를 트는 가구들이 많아졌어요! 외출 시 보일러를 외출로 바꿔준다면 가스비 절감에 큰 도움이 된답니다 :)';
  } catch (e) {
    print('❌ recommendations 에러: $e');
    return '날씨가 추워지는 요즘 보일러를 트는 가구들이 많아졌어요! 외출 시 보일러를 외출로 바꿔준다면 가스비 절감에 큰 도움이 된답니다 :)';
  }
});

final settingsProvider = FutureProvider<Settings>((ref) async {
  const storage = FlutterSecureStorage();
  final userIdStr = await storage.read(key: 'userId');

  if (userIdStr == null) {
    throw Exception('userId not found in storage');
  }

  final userId = int.parse(userIdStr);
  final apiClient = ref.watch(usageApiClientProvider);

  try {
    final response = await apiClient.getSettings(userId);
    print('✅ settings 성공: ${response.data}');
    return response.data;
  } catch (e) {
    print('❌ settings 에러: $e');
    rethrow;
  }
});

final billsProvider = FutureProvider<List<Bill>>((ref) async {
  const storage = FlutterSecureStorage();
  final userIdStr = await storage.read(key: 'userId');

  if (userIdStr == null) {
    throw Exception('userId not found in storage');
  }

  final userId = int.parse(userIdStr);
  final apiClient = ref.watch(usageApiClientProvider);

  final now = DateTime.now();
  final billingMonth = '${now.year}-${now.month.toString().padLeft(2, '0')}-01';
  final utilityTypes = ['ELECTRICITY', 'WATER', 'GAS'];

  try {
    final results = await Future.wait(
      utilityTypes.map(
        (type) => apiClient.getBills(userId, type, billingMonth),
      ),
    );
    final bills = results.map((r) => r.data).toList();
    print('✅ bills 성공: $bills');
    return bills;
  } catch (e) {
    print('❌ bills 에러: $e');
    rethrow;
  }
});
