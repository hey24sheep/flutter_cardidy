import 'package:flutter_cardidy/flutter_cardidy.dart';
import 'package:flutter_cardidy/src/cardidy.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("CVV Tests", () {
    runCVVTests();
  });
}

void runCVVTests() {
  testCase("123", CardType.Unknown, false);
  testCase("", CardType.Visa, false);
  testCase(" ", CardType.Visa, false);
  testCase("a", CardType.Visa, false);
  testCase("1", CardType.Visa, false);
  testCase("12", CardType.Visa, false);
  testCase("123", CardType.Visa, true);
  testCase("000", CardType.Visa, true);
  testCase("999", CardType.Visa, true);
  testCase("0000", CardType.Visa, false);
  testCase("9999", CardType.Visa, false);
  testCase("9A9", CardType.Visa, false);
  testCase("123", CardType.AmericanExpress, false);
  testCase("0000", CardType.AmericanExpress, true);
  testCase("9999", CardType.AmericanExpress, true);
  testCase(" 999", CardType.AmericanExpress, false);
}

void testCase(
  String testCardNumber,
  CardType cardType,
  bool expectedResult, {
  bool useCheck = true,
  bool ignoreNoise = false,
}) {
  var result = FlutterCardidy.isCvvValid(testCardNumber, cardType);
  expect(result, expectedResult);
}
