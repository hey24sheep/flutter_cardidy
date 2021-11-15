import '../extensions/extensions.dart';

class PaddedRange {
  static const identificationNumberLength = 8;
  static const minDigit = 0;
  static const maxDigit = 9;

  PaddedRange(int mi, int ma) {
    min = mi.padRight(identificationNumberLength, minDigit);
    max = ma.padRight(identificationNumberLength, maxDigit);
  }

  PaddedRange.fix(int fix) {
    min = fix.padRight(identificationNumberLength, minDigit);
    max = fix.padRight(identificationNumberLength, maxDigit);
  }

  int min = 0;
  int max = 0;

  bool contains(int value) => value >= min && value <= max;
}
