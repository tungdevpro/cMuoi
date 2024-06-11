import '../../import.dart';

class LogoText extends StatelessWidget {
  const LogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: AppColor.secondaryDefault),
        children: [
          TextSpan(text: 'c'),
          TextSpan(
            text: 'Muoi',
            style: TextStyle(color: AppColor.primaryDefault),
          ),
        ],
      ),
    );
    // return
  }
}
