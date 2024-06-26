import 'package:cmuoi/features/home/component/box_label_widget.dart';
import '../../../import.dart';

class FavoritePlaceWidget extends StatelessWidget {
  const FavoritePlaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BoxLabelWidget(
      label: S.current.favorite_place,
      child: ListTile(),
    );
  }
}
