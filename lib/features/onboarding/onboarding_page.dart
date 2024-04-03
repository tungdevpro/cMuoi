import 'package:core/core.dart';
import 'package:express_cart/common/constants/constants.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 90,
        padding: const EdgeInsets.symmetric(vertical: AppSize.padding, horizontal: AppSize.padding),
        child: ButtonBase(
          onPressed: () {},
          title: 'Next',
        ),
        // child: TextButton(
        //   style: ButtonStyle(
        //       backgroundColor: MaterialStateProperty.all<Color>(AppColor.buttonPrimary),
        //       shape: MaterialStateProperty.all(
        //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.radius)),
        //       )),
        //   onPressed: () {},
        //   child: Text("Next", style: TextStyle(fontSize: 20, color: AppColor.onPrimary)),
        // ),
      ),
    );
  }
}
