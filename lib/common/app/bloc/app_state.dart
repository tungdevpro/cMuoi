import 'package:equatable/equatable.dart';

class AppState extends Equatable {
  final bool? hasNewVersion;
  final bool? isDark;

  const AppState({this.hasNewVersion, this.isDark});

  @override
  List<Object?> get props => [hasNewVersion, isDark];

  AppState copyWith({
    bool? hasNewVersion,
    bool? isDark,
  }) {
    return AppState(
      hasNewVersion: hasNewVersion ?? this.hasNewVersion,
      isDark: isDark ?? this.isDark,
    );
  }
}
