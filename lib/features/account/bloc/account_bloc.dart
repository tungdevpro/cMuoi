import 'package:express_cart/features/account/bloc/account_event.dart';
import 'package:express_cart/features/account/bloc/account_state.dart';
import 'package:express_cart/import.dart';
import 'package:injectable/injectable.dart';

@injectable
class AccountBloc extends BaseBloc<AccountEvent, AccountState> {
  AccountBloc() : super(AccountState());

  @override
  void listEvent() {}
}
