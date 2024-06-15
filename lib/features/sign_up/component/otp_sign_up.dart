import '../../../import.dart';

class OtpSignUp extends StatelessWidget {
  const OtpSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.verification,
          style: AppTypography.regularType14.copyWith(color: AppColor.secondaryLight300),
        ),
        const Gap(40),
        AppTextField(
          label: S.current.email,
          onChanged: (value) {},
        ),
      ],
    );
  }
}
