import 'package:cmuoi/import.dart';
import 'package:cmuoi/ui/cover_place/bloc/cover_place_event.dart';
import 'package:cmuoi/ui/cover_place/bloc/cover_place_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class CoverPlaceBloc extends BaseBloc<CoverPlaceEvent, CoverPlaceState> {
  CoverPlaceBloc() : super(CoverPlaceState());

  @override
  void listEvent() {}
}
