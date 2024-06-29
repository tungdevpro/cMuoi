import 'package:core/core.dart';

enum SignUpStatus { none, success, failure, validating }

class SignUpState extends BaseState {
  final SignUpStatus status;
  SignUpState({this.status = SignUpStatus.none});

  SignUpState copyWith({SignUpStatus? status}) {
    return SignUpState(status: status ?? this.status);
  }

  @override
  List<Object?> get props => [status];
}
