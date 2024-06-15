import 'dart:async';

import 'package:express_cart/features/home/bloc/home_event.dart';
import 'package:express_cart/features/home/bloc/home_state.dart';
import 'package:express_cart/import.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState());

  @override
  void listEvent() {
    on<GetTheLatestPromotionInformationEvent>(_onGetTheLatestPromotionInformationEvent);
  }

  Future<void> _onGetTheLatestPromotionInformationEvent(GetTheLatestPromotionInformationEvent event, Emitter<HomeState> emit) async {}
}
