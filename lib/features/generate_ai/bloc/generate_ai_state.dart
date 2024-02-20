import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_ai_state.freezed.dart';

@freezed
abstract class GenerateAiState with _$GenerateAiState {
  factory GenerateAiState.loading() = Loading;
}
