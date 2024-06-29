import 'package:cmuoi/ui/profile/bloc/profile_event.dart';
import 'package:cmuoi/ui/profile/bloc/profile_state.dart';
import 'package:cmuoi/import.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProfileBloc extends BaseBloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState());

  @override
  void listEvent() {}
}
