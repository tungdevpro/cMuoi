import 'dart:async';

import 'package:cmuoi/features/home/bloc/home_event.dart';
import 'package:cmuoi/features/home/bloc/home_state.dart';
import 'package:cmuoi/import.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState());

  @override
  void listEvent() {
    on<GetYourCardBalanceEvent>(_onGetYourCardBalanceEvent);
    on<GetTheLatestPromotionInformationEvent>(_onGetTheLatestPromotionInformationEvent);
  }

  Future<void> _onGetTheLatestPromotionInformationEvent(GetTheLatestPromotionInformationEvent event, Emitter<HomeState> emit) async {}

  Future<void> _onGetYourCardBalanceEvent(GetYourCardBalanceEvent event, Emitter<HomeState> emit) async {}
}
