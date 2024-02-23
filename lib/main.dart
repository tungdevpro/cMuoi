import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen_artify/common/bloc/app_bloc.dart';
import 'package:gen_artify/di/di.dart';
import 'package:gen_artify/gen_arrtify.dart';

void main() async {
  await _prepare();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppBloc.to),
      ],
      child: const GenArtify(),
    ),
  );
}

Future<void> _prepare() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = CustomBlocObserver();
  DataLayer.init();
  DomainLayer.init();
  configureDependencies();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
}
