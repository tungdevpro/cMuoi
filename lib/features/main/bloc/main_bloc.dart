
import 'package:core/common/bloc/base_bloc.dart';
import 'package:express_cart/features/main/bloc/main_event.dart';
import 'package:express_cart/features/main/bloc/main_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class MainBloc extends BaseBloc<MainEvent, MainState> {
  MainBloc() : super(MainState());

  @override
  void listEvent() {
  }

}