import 'package:cmuoi/import.dart';

sealed class CoverPlaceEvent extends BaseEvent {}

final class LoadIntialCoverPlaceEvent extends CoverPlaceEvent {
  @override
  List<Object?> get props => [];
}
