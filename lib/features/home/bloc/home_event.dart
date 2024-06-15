import 'package:express_cart/import.dart';

abstract class HomeEvent extends BaseEvent {}

class GetTheLatestPromotionInformationEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}
