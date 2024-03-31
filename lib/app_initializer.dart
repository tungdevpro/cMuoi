import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen_artify/di/di.dart';
import 'package:gen_artify/gen_artify.dart';

import 'common/app/bloc/app_bloc.dart';
import 'common/auth/auth.dart';

class AppInitializer {
  AppInitializer._internal();

  static final AppInitializer instance = AppInitializer._internal();

  Future<void> run() async {
    WidgetsFlutterBinding.ensureInitialized();
    _dependencies();
    _configurations();
    runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(create: (context) => AuthBloc.to),
          BlocProvider<AppBloc>(create: (context) => AppBloc.to),
        ],
        child: const GenArtify(),
      ),
    );
  }

  Future<void> _dependencies() async {
    // AppwriteModule.instance().init(AppConfig.appwriteId);
    DataLayer.init();
    DomainLayer.init();
    configureDependencies();
  }

  Future<void> _configurations() async {
    Bloc.observer = CustomBlocObserver();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
  }
}
