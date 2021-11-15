import 'package:flutter_cardidy/flutter_cardidy.dart';
import 'package:flutter_cardidy/src/Models/card_type.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('ShouldIdentifyAsUnknownFalsyCase', () {
    testCase("", []);
    testCase("a", []);
    testCase("1", []);
    testCase("4", []);
  });
}

void testCase(
  String testCardNumber,
  List<CardType> expectedResult, {
  bool useCheck = true,
  bool ignoreNoise = false,
}) {
  var result = FlutterCardidy.identify(testCardNumber,
      useCheck: useCheck, ignoreNoise: ignoreNoise);

  var isSuccess = false;

  expect(result.length, expectedResult.length);

  if (expectedResult.isNotEmpty) {
    for (var er in expectedResult) {
      isSuccess = result.any((element) => element.toString() == er.toString());
    }
    expect(true, isSuccess);
  }
}
