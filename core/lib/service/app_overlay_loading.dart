import 'package:flutter/widgets.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

abstract class BaseUILoading {
  void show();
  void hide();
}

class AppOverlayLoading extends BaseUILoading {
  AppOverlayLoading._inst();

  static AppOverlayLoading? _instance;
  factory AppOverlayLoading.instance() => _instance ??= AppOverlayLoading._inst();

  @override
  void hide() {}

  @override
  void show() {}

  TransitionBuilder build() {
    return EasyLoading.init();
  }
}
