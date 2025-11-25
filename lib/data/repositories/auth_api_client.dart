import 'package:dio/dio.dart';
import 'package:hanjeon/data/dto/auth/refresh_token.dart';
import 'package:hanjeon/data/dto/auth/request/signup_request.dart';
import 'package:hanjeon/data/dto/auth/response/kakao_login_response.dart';
import 'package:hanjeon/data/dto/auth/response/login_response.dart';
import 'package:hanjeon/data/dto/auth/response/signup_response.dart';
import 'package:hanjeon/data/dto/user/user_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api_client.g.dart';

@RestApi()
abstract class AuthApiClient {
  factory AuthApiClient(Dio dio, {String? baseUrl}) = _AuthApiClient;

  @GET('/auth/users/{userId}')
  Future<UserDto> getUserDetails(@Path('userId') int userId);

  @POST('/auth/signup')
  Future<SignupResponse> signup(@Body() SignupRequest request);

  @POST('/auth/refresh')
  Future<RefreshTokenResponse> refreshToken(
    @Body() RefreshTokenRequest request,
  );

  @POST('/auth/kakao/login')
  Future<KakaoLoginResponse> kakaoLogin(
    @Query('accessToken') String accessToken,
  );

  @POST('/auth/login')
  Future<LoginResponse> login(
    @Field('email') String email,
    @Field('password') String password,
  );
}
