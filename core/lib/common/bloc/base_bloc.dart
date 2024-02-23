import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'base_event.dart';
import 'base_state.dart';

abstract class JsonCodec<T> {
  Map<String, dynamic> toJson(T obj);

  T fromJson(Map<String, dynamic> json);
}

abstract class BaseBloc<T extends BaseEvent, S extends BaseState>
    extends Bloc<T, S> with WidgetsBindingObserver, RouteAware {
  late bool _isMounted;
  late BuildContext _context;
  BuildContext get context => _context;
  dynamic arguments;

  String? _originRoute;

  String get originRoute => _originRoute ?? '';

  BaseBloc(S initState) : super(initState) {
    _isMounted = true;
    checkNetworkConnection();
    listEvent();
    WidgetsBinding.instance.addObserver(this);
  }

  void setContext(BuildContext ctx) {
    _context = ctx;
  }

  @override
  Future<void> close() {
    _isMounted = false;
    WidgetsBinding.instance.removeObserver(this);
    return super.close();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (_isMounted) {
      switch (state) {
        case AppLifecycleState.inactive:
          onInActive();
          break;
        case AppLifecycleState.paused:
          onPaused();
          break;
        case AppLifecycleState.resumed:
          onResumed();
          break;
        case AppLifecycleState.detached:
          onDetached();
          break;
        case AppLifecycleState.hidden:
          onHidden();
      }
    }
  }

  void checkNetworkConnection([Function? handler]) async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        handler?.call();
      }
    } on SocketException catch (_) {}
  }

  void listEvent();

  void onInActive() {}

  void onPaused() {}

  void onResumed() {}

  void onDetached() {}

  void onHidden() {}

  void initialRouteSetting(RouteSettings? settings) {
    arguments = settings?.arguments;
    _originRoute = settings?.name;
  }

  TypeArg convertArgumentToModel<TypeArg>(JsonCodec<TypeArg> cb) {
    return cb.fromJson(arguments);
  }

  @protected
  void showLoading() => EasyLoading.show();

  @protected
  void hideLoading() => EasyLoading.dismiss();
}
