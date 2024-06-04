import 'package:core/common/bloc/base_event.dart';

abstract class MainEvent extends BaseEvent {}

class LoadInitialEvent extends MainEvent {
  @override
  List<Object?> get props => [];

}