import 'package:express_cart/common/common.dart';
import 'package:express_cart/features/account/bloc/account_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../import.dart';

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
          children: const [
            Gap(60),
            Stack(
              children: [
                Center(
                  child: CustomDashedBorder(
                      padding: EdgeInsets.all(12),
                      radius: Radius.circular(AppSize.radiusCircle),
                      color: AppColor.primaryDefault,
                      child: AvatarWidget('http', name: 'Tung', size: 85)),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
