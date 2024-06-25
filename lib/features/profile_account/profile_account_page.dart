import 'package:express_cart/import.dart';
import 'package:flutter/cupertino.dart';

class ProfileAccountPage extends StatelessWidget {
  const ProfileAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appBar: HeaderFix(text: S.current.account),
      body: ListView(),
    );
  }
}
