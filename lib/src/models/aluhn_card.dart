import 'acard.dart';
import 'card_type.dart';
import 'padded_range.dart';

abstract class ALuhnCard extends ACard {
  ALuhnCard.paddedRange(
      CardType name, List<PaddedRange> prefixes, List<int> lengths)
      : super.paddedRange(name, prefixes, lengths);

  ALuhnCard.intList(CardType name, List<int> prefixes, List<int> lengths)
      : super.intList(name, prefixes, lengths);

  ALuhnCard(CardType name, int prefix, List<int> lengths)
      : super(name, prefix, lengths);

  @override
  bool check(List<int> digits) => checkLuhn(digits);

  /// Compact Luhn check
  ///
  /// Inspired from <a href="https://stackoverflow.com/users/3395015/garryp">garryp</a>'s
  /// <a href="https://stackoverflow.com/a/40491537/1248177">answer</a> published under CC BY-SA 3.0
  /// on <a href="https://stackoverflow.com/q/21249670/1248177">implementing luhn algorithm using c#</a>.
  ///
  /// [digits] The card digits to check</param>
  ///
  /// returns `true/false depending on valid checkdigit`
  static bool checkLuhn(List<int> digits) {
    var res = digits.reversed
        .toList()
        .asMap()
        .map((i, thisNum) {
          var s = i % 2 == 0
              ? thisNum
              : ((thisNum *= 2) > 9 ? thisNum - 9 : thisNum);
          return MapEntry(i, s);
        })
        .values
        .toList();

    return res.reduce((value, element) => value + element) % 10 == 0;
  }
}
