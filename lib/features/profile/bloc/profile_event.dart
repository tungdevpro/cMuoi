import 'package:express_cart/import.dart';

abstract class ProfileEvent extends BaseEvent {}

class LoadInitialProfileEvent extends ProfileEvent {
  @override
  List<Object?> get props => [];
}
