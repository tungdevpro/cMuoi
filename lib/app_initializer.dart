import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:express_cart/firebase_options.dart';
import 'package:firebase_module/firebase_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:express_cart/di/di.dart';
import 'package:express_cart/express_cart.dart';

import 'common/app/bloc/app_bloc.dart';
import 'common/auth/auth.dart';

class AppInitializer {
  AppInitializer._internal();

  static final AppInitializer instance = AppInitializer._internal();

  Future<void> run() async {
    WidgetsFlutterBinding.ensureInitialized();
    await _dependencies();
    _configurations();
    runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(create: (context) => AuthBloc.to),
          BlocProvider<AppBloc>(create: (context) => AppBloc.to),
        ],
        child: const ExpressCart(),
      ),
    );
  }

  Future<void> _dependencies() async {
    await Future.wait([
      FirebaseModule().initialize(options: DefaultFirebaseOptions.currentPlatform),
      DataLayer.init(),
      DomainLayer.init(),
    ]);
    configureDependencies();
  }

  Future<void> _configurations() async {
    Bloc.observer = CustomBlocObserver();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.dark));
  }
}
