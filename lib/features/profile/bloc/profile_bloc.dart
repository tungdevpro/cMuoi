import 'package:express_cart/features/profile/bloc/profile_event.dart';
import 'package:express_cart/features/profile/bloc/profile_state.dart';
import 'package:express_cart/import.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProfileBloc extends BaseBloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState());

  @override
  void listEvent() {}
}
