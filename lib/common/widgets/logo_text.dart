import '../../import.dart';

class LogoText extends StatelessWidget {
  final Color? color;
  const LogoText({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: color ?? AppColor.secondaryDefault),
        children: [
          const TextSpan(text: 'c'),
          TextSpan(
            text: 'Muoi',
            style: TextStyle(color: color ?? AppColor.primaryDefault),
          ),
        ],
      ),
    );
    // return
  }
}
