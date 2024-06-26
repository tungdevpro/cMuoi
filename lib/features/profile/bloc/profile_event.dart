import 'package:cmuoi/import.dart';

abstract class ProfileEvent extends BaseEvent {}

class LoadInitialProfileEvent extends ProfileEvent {
  @override
  List<Object?> get props => [];
}
