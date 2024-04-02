import 'package:equatable/equatable.dart';

abstract class AppEvent extends Equatable {}

class GetConfigGlobalEvent extends AppEvent {
  @override
  List<Object?> get props => [];
}

class CheckOnboardingEvent extends AppEvent {
  @override
  List<Object?> get props => [];
}
