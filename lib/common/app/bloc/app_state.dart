import 'package:equatable/equatable.dart';

class AppState extends Equatable {
  final bool hasNewVersion;

  const AppState({this.hasNewVersion = false});

  @override
  List<Object?> get props => [hasNewVersion];
}
