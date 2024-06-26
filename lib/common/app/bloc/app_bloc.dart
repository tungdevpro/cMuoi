import 'dart:async';

import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:domain/usecase/config/check_onboarding_is_displayed_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cmuoi/common/app/bloc/app_event.dart';
import 'package:cmuoi/common/app/bloc/app_state.dart';
import 'package:cmuoi/di/di.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppBloc extends Bloc<AppEvent, AppState> implements LibraryInitializer<void> {
  final CheckOnboardingIsDisplayedUseCase _checkOnboardingIsDisplayedUseCase;
  final HideOnboardingIsDisplayedUsecase _hideOnboardingIsDisplayedUsecase;

  AppBloc(this._checkOnboardingIsDisplayedUseCase, this._hideOnboardingIsDisplayedUsecase) : super(const AppState(hasNewVersion: false)) {
    on<GetConfigGlobalEvent>(_onGetConfigGlobalEvent);
    on<CheckOnboardingEvent>(_onCheckOnboardingEvent);
    on<HideOnboardingEvent>(_onHideOnboardingEvent);
  }

  static AppBloc get to => di<AppBloc>()..init();

  @override
  Future<void> init() async {
    add(GetConfigGlobalEvent());
    add(CheckOnboardingEvent());
  }

  void _onGetConfigGlobalEvent(GetConfigGlobalEvent event, Emitter<AppState> emit) {}

  void _onCheckOnboardingEvent(CheckOnboardingEvent event, Emitter<AppState> emit) async {
    final res = await _checkOnboardingIsDisplayedUseCase.invoke(null);
    res.when(
      error: (type, error, code) {},
      success: (data) => emit(AppState(isOnBoarding: data ?? false)),
    );
  }

  Future<void> _onHideOnboardingEvent(HideOnboardingEvent event, Emitter<AppState> emit) async {
    print('_onHideOnboardingEvent...... ');
    await _hideOnboardingIsDisplayedUsecase.invoke(null);
    emit(state.copyWith(isOnBoarding: true));
  }
}
