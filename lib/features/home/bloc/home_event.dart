import 'dart:async';

import 'package:express_cart/import.dart';

abstract class HomeEvent extends BaseEvent {}

class GetYourCardBalanceEvent extends HomeEvent {
  final Completer<bool> completer;

  GetYourCardBalanceEvent({required this.completer});

  @override
  List<Object?> get props => [completer];
}

class GetTheLatestPromotionInformationEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class GetNotificationNotSeenEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}
