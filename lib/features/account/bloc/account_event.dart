import 'package:express_cart/import.dart';

abstract class AccountEvent extends BaseEvent {}

class LoadInitialAccountEvent extends AccountEvent {
  @override
  List<Object?> get props => [];
}
