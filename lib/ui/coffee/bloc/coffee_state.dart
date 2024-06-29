import 'package:cmuoi/import.dart';

class CoffeeState extends BaseState {
  final List<CoffeeEntity> items;

  CoffeeState({
    this.items = const [],
  });

  CoffeeState copyWith({
    List<CoffeeEntity>? items,
  }) {
    return CoffeeState(
      items: items ?? this.items,
    );
  }

  @override
  List<Object?> get props => [items];
}
