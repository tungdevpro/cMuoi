import 'package:express_cart/features/account/bloc/account_bloc.dart';

import '../../import.dart';
import 'component/item_account_widget.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends CoreBindingState<AccountPage, AccountBloc> {
  @override
  AccountBloc get initBloc => di<AccountBloc>();

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.paddingXL),
          children: [
            _head(),
            const ItemAccountWidget(),
          ],
        ),
      ),
    );
  }

  Widget _head() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Gap(60),
        const Stack(
          children: [
            CustomDashedBorder(
                padding: EdgeInsets.all(12),
                radius: Radius.circular(AppSize.radiusCircle),
                color: AppColor.primaryDefault,
                child: AvatarWidget('http', name: 'Tung', size: 85)),
          ],
        ),
        const Gap(AppSize.padding),
        Text(S.current.password, style: AppTypography.semiBoldType20),
        const Gap(8),
        Text(S.current.password, style: AppTypography.regularType14.copyWith(color: AppColor.secondaryLight300)),
        const Gap(AppSize.paddingXXL),
      ],
    );
  }
}
