import 'dart:math' as math;

import 'package:flutter/material.dart';

extension StringExtensions on String {
  bool isNullOrWhiteSpace() {
    return isEmpty || trim() == '';
  }

  bool isDigit(String s, int idx) => (s.codeUnitAt(idx) ^ 0x30) <= 9;

  bool isCardNumberValid(bool handleAnonymization) =>
      !isNullOrWhiteSpace() || !isCardShady(handleAnonymization);

  bool isCardShady(bool handleAnonymization) =>
      !startsWithDigit() || (!handleAnonymization && hasNotANumber());

  bool startsWithDigit() => runes.isNotEmpty ? runes.first.isDigit() : false;

  bool hasNotANumber() =>
      runes.isNotEmpty ? runes.every((x) => !x.isDigit()) : true;

  Characters getCharsFromCardString({bool ignoreNoise = false}) =>
      (ignoreNoise ? cleanNoise() : characters);

  Characters cleanNoise() => characters.where((c) => !"- .".contains(c));

  List<int> toDigits({bool ignoreNoise = false}) =>
      getCharsFromCardString(ignoreNoise: ignoreNoise)
          .map((c) => int.tryParse(c) ?? 0)
          .toList();
}

extension ListExtensions on List<int> {
  int toNumber() {
    return reduce((value, element) => value * 10 + element);
  }
}

extension IntExtensions on int {
  /// Measure the 'length' of an integer (e.g. 121 would be 3).
  ///
  /// Inspired from <a href="https://stackoverflow.com/users/411022/ilmari-karonen">Ilmari Karonen</a>'s <a href="https://stackoverflow.com/a/6865024/1248177">answer</a> published under <a href="https://creativecommons.org/licenses/by-sa/4.0/">CC BY-SA 3.0</a> on <a href="https://stackoverflow.com/q/6864991/1248177">How to get the size of a number in .net?</a>.
  ///
  /// [number] The number to measure
  ///
  /// returns `The length measured`
  int measure() {
    var abs = this.abs();
    var max = math.max(abs, 0.5);
    var log10 = math.log(max) / math.ln10;
    return (log10 + 1).toInt();
  }

  int padRight(int totalWidth, int paddingValue) {
    var missingLength = totalWidth - measure();
    var paddedNumber = this * math.pow(10, missingLength).toInt();
    if (missingLength == 0) {
      return paddedNumber;
    }
    var top = List.filled(missingLength, paddingValue).toNumber();
    return paddedNumber + top;
  }

  /// Check if a char rune is a digit
  ///
  /// Uses implementation of https://pub.dev/documentation/quiver/latest/quiver.strings/isDigit.html
  ///
  /// returns `true if is digit, else false`
  bool isDigit() => this ^ 0x30 <= 9;
}
