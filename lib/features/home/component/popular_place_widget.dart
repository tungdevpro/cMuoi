import '../../../import.dart';
import 'box_label_widget.dart';

class PopularPlaceWidget extends StatelessWidget {
  const PopularPlaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BoxLabelWidget(
      label: S.current.popular_place,
      child: ListTile(),
    );
  }
}
