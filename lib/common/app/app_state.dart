import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const AppState._();
  // final bool hasNewVersion;
  // final bool isSkipIntroduce;

  // const AppState({this.hasNewVersion = false, this.isSkipIntroduce = false});
  // const AppState(this.hasNewVersion, this.isSkipIntroduce);

  const factory AppState({required bool hasNewVersion}) = _AppState;
}
