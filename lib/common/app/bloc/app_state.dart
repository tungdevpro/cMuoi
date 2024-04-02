import 'package:equatable/equatable.dart';

class AppState extends Equatable {
  final bool? hasNewVersion;
  final bool? isDark;
  final bool isOnBoarding;

  const AppState({this.hasNewVersion, this.isDark, this.isOnBoarding = false});

  @override
  List<Object?> get props => [hasNewVersion, isDark, isOnBoarding];

  AppState copyWith({
    bool? hasNewVersion,
    bool? isDark,
    bool? isOnBoarding,
  }) {
    return AppState(
      hasNewVersion: hasNewVersion ?? this.hasNewVersion,
      isDark: isDark ?? this.isDark,
      isOnBoarding: isOnBoarding ?? this.isOnBoarding,
    );
  }
}
