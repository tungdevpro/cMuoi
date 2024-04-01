import 'package:core/core.dart';
import 'package:domain/usecase/sign_up/sign_up_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:express_cart/di/di.dart';
import 'package:express_cart/features/sign_up/bloc/sign_up_event.dart';
import 'package:express_cart/features/sign_up/bloc/sign_up_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignUpBloc extends BaseBloc<SignUpEvent, SignUpState> {
  final SignUpUsecase usecase;
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
