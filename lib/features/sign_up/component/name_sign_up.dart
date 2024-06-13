import '../../../import.dart';

class NameSignUp extends StatelessWidget {
  const NameSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.input_your_name,
          style: AppTypography.regularType14.copyWith(color: AppColor.secondaryLight300),
        ),
        const Gap(40),
        AppTextField(
          label: S.current.first_name,
          onChanged: (value) {},
        ),
        const Gap(AppSize.paddingXL),
        AppTextField(
          label: S.current.last_name,
          onChanged: (value) {},
        ),
      ],
    );
  }
}
