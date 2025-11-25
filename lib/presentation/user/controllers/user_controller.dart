import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hanjeon/core/network/dio_client.dart';
import 'package:hanjeon/data/dto/user/user_dto.dart';
import 'package:hanjeon/data/repositories/auth_api_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authApiClientProvider = Provider<AuthApiClient>((ref) {
  return AuthApiClient(DioClient.instance);
});

final userDataProvider = FutureProvider<UserDto>((ref) async {
  const storage = FlutterSecureStorage();
  final userIdStr = await storage.read(key: 'userId');

  if (userIdStr == null) {
    throw Exception('userId not found in storage');
  }

  final userId = int.parse(userIdStr);
  final apiClient = ref.watch(authApiClientProvider);
  final userData = await apiClient.getUserDetails(userId);

  return userData;
});
