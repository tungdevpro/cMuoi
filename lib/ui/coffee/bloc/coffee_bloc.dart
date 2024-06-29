import 'dart:async';

import 'package:cmuoi/ui/coffee/bloc/coffee_event.dart';
import 'package:cmuoi/ui/coffee/bloc/coffee_state.dart';
import 'package:injectable/injectable.dart';

import '../../../import.dart';

@injectable
class CoffeeBloc extends BaseBloc<CoffeeEvent, CoffeeState> {
  CoffeeBloc() : super(CoffeeState());

  @override
  void listEvent() {
    on<GetListCoffeeEvent>(_onGetListCoffeeEvent);
  }

  Future<void> _onGetListCoffeeEvent(GetListCoffeeEvent event, Emitter<CoffeeState> emit) async {}
}
