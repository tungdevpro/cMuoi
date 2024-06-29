import 'package:cmuoi/import.dart';

sealed class CoffeeEvent extends BaseEvent {}

final class GetListCoffeeEvent extends CoffeeEvent {
  @override
  List<Object?> get props => [];
}