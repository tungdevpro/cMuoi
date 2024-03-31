import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen_artify/common/app/bloc/app_event.dart';
import 'package:gen_artify/common/app/bloc/app_state.dart';
import 'package:gen_artify/di/di.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState(hasNewVersion: false));

  static AppBloc get to => di<AppBloc>();
}
