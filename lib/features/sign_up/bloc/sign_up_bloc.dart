import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cmuoi/di/di.dart';
import 'package:cmuoi/features/sign_up/bloc/sign_up_event.dart';
import 'package:cmuoi/features/sign_up/bloc/sign_up_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignUpBloc extends BaseBloc<SignUpEvent, SignUpState> {
  final SignUpUseCase usecase;
  SignUpBloc(this.usecase) : super(SignUpState());

  static SignUpBloc get to => di<SignUpBloc>();

  @override
  void listEvent() {
    on<SignUpChangedFullnameEvent>(_onSignUpChangedFullnameEvent);
    on<SignUpChangedEmailEvent>(_onSignUpChangedEmailEvent);
    on<SignUpChangedPasswordEvent>(_onSignUpChangedPasswordEvent);
    on<SignUpSubmittedEvent>(_onSignUpSubmittedEvent);
  }

  void _onSignUpChangedFullnameEvent(SignUpChangedFullnameEvent event, Emitter<SignUpState> emit) {}

  void _onSignUpChangedEmailEvent(SignUpChangedEmailEvent event, Emitter<SignUpState> emit) {}

  void _onSignUpChangedPasswordEvent(SignUpChangedPasswordEvent event, Emitter<SignUpState> emit) {}

  void _onSignUpSubmittedEvent(SignUpSubmittedEvent event, Emitter<SignUpState> emit) {}
}
