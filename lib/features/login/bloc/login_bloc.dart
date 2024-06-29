import 'package:cmuoi/import.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../../../helper/validates/email_validate_model.dart';
import '../../../helper/validates/password_validate_model.dart';
import 'login_event.dart';
import 'login_state.dart';

@injectable
class LoginBloc extends BaseBloc<LoginEvent, LoginState> {
  LoginBloc(this._loginUseCase) : super(LoginState(status: LoginStatus.none));

  final LoginUseCase _loginUseCase;

  static LoginBloc get to => di<LoginBloc>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void _onEmailChanged(LoginEmailChanged event, Emitter<LoginState> emit) {
    final emailModel = EmailValidateModel.dirty(event.email);
    emit(state.copyWith(status: LoginStatus.validating, email: emailModel));
  }

  void _onPasswordChanged(LoginPasswordChanged event, Emitter<LoginState> emit) {
    final pwdModel = PasswordValidateModel.dirty(event.password);
    emit(state.copyWith(status: LoginStatus.validating, password: pwdModel));
  }

  Future<void> _onLoginSubmittedEvent(LoginSubmittedEvent event, Emitter<LoginState> emit) async {
    return runAction(
      action: () async {
        // await Future.delayed(const Duration(seconds: 1));
        final response = await _loginUseCase.invoke(LoginParam(username: "emilys", password: "emilyspass"));
        response.when(
          error: (type, error, code) {
            SnackBarService.instance().show(context, error, status: SnackbarStatus.failure);
          },
          success: (data) {
            SnackBarService.instance().show(context, S.current.logged_in_successfully, status: SnackbarStatus.success);
          },
        );
      },
    );
  }

  void _onTogglePasswordEvent(LoginTogglePasswordEvent event, Emitter<LoginState> emit) {}

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }

  @override
  void listEvent() {
    on<LoginEmailChanged>(_onEmailChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginSubmittedEvent>(_onLoginSubmittedEvent);
    on<LoginTogglePasswordEvent>(_onTogglePasswordEvent);
  }
}
