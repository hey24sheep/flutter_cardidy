import 'card_type.dart';
import 'icard.dart';
import 'padded_range.dart';

abstract class ACard implements ICard {
  ACard.paddedRange(CardType n, List<PaddedRange> p, List<int> l) {
    name = n;
    prefixes = p;
    lengths = l;
  }

  ACard.intList(CardType n, List<int> p, List<int> l) {
    name = n;
    prefixes = p.map((e) => PaddedRange.fix(e)).toList();
    lengths = l;
  }

  ACard(CardType n, int p, List<int> l) {
    name = n;
    prefixes = [PaddedRange.fix(p)];
    lengths = l;
  }

  @override
  late CardType name;

  @override
  late List<PaddedRange> prefixes;

  @override
  late List<int> lengths;

  @override
  bool check(List<int> digits) => true;
}
