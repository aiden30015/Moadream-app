import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
abstract class Settings with _$Settings {
  const factory Settings({
    required int settingId,
    required int userId,
    required int monthlyBudget,
    required int alertThreshold,
    required bool pushEnabled,
    required bool emailEnabled,
    required double efficiencyScore,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}

@freezed
abstract class SettingsResponse with _$SettingsResponse {
  const factory SettingsResponse({
    required bool success,
    required Settings data,
    String? message,
  }) = _SettingsResponse;

  factory SettingsResponse.fromJson(Map<String, dynamic> json) =>
      _$SettingsResponseFromJson(json);
}
