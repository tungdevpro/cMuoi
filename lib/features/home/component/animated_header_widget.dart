import '../../../import.dart';

class AnimatedHeaderWidget extends StatelessWidget {
  const AnimatedHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      // padding: EdgeInsets.all(AppSize.padding),
      child: HeaderFix(
        leadingIcon: LeadingIcon.close,
        leadingWidth: 0,
        leadingIconColor: Colors.transparent,
      ),
    );
  }
}
