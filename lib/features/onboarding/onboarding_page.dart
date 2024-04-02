import 'package:express_cart/common/constants/constants.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        // color: Colors.red,
        height: 90,
        padding: const EdgeInsets.symmetric(vertical: AppSize.padding, horizontal: AppSize.padding),
        child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(AppColor.buttonPrimary),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.radius)),
              )),
          onPressed: () {},
          child: Text("Next", style: TextStyle(fontSize: 22, color: AppColor.onPrimary)),
        ),
      ),
    );
  }
}
