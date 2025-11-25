import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommendation.freezed.dart';
part 'recommendation.g.dart';

@freezed
abstract class Recommendation with _$Recommendation {
  const factory Recommendation({
    required int recId,
    required int userId,
    required String utilityType,
    required String recType,
    required String recommendationText,
    required int expectedSavings,
    required String implementationDifficulty,
    required bool isApplied,
    required String createdAt,
  }) = _Recommendation;

  factory Recommendation.fromJson(Map<String, dynamic> json) =>
      _$RecommendationFromJson(json);
}

@freezed
abstract class RecommendationResponse with _$RecommendationResponse {
  const factory RecommendationResponse({
    required bool success,
    required List<Recommendation> data,
    String? message,
  }) = _RecommendationResponse;

  factory RecommendationResponse.fromJson(Map<String, dynamic> json) =>
      _$RecommendationResponseFromJson(json);
}
