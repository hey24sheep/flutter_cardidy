import 'card_type.dart';
import 'padded_range.dart';

abstract class ICard {
  late CardType name;

  late List<int> lengths;

  late List<PaddedRange> prefixes;

  bool check(List<int> digits);
}
