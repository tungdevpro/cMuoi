import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    log('[BLOC_CREATE]: $bloc (${DateTime.now().millisecondsSinceEpoch})');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    log('[BLOC_ERROR]: $error');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    log('[BLOC_CLOSE]: $bloc (${DateTime.now().millisecondsSinceEpoch})');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
  }
}
