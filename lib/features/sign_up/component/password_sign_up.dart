import '../../../import.dart';

class PasswordSignUp extends StatelessWidget {
  const PasswordSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.input_your_password,
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
