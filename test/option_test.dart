import 'package:flutter_cardidy/flutter_cardidy.dart';
import 'package:flutter_cardidy/src/cardidy.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("ShouldIdentifyFragment", () {
    testCase("4", [CardType.Visa], validateLength: false, useCheck: false);
    testCase("510", [CardType.MasterCard],
        validateLength: false, useCheck: false);
    testCase("340", [CardType.AmericanExpress],
        validateLength: false, useCheck: false);
    testCase("4", [], validateLength: true, useCheck: false);
    testCase("510", [], validateLength: true, useCheck: false);
    testCase("340", [], validateLength: true, useCheck: false);
  });

  test("ShouldIdentify", () {
    testCase("34-0000-0000-0000-0", [CardType.AmericanExpress],
        ignoreNoise: true, useCheck: false);
    testCase("  341071000090 108", [CardType.AmericanExpress],
        ignoreNoise: true, useCheck: false);
    testCase("3.-78967557334965", [CardType.AmericanExpress],
        ignoreNoise: true, useCheck: false);
    testCase("34-0000-0000-0000-0", [], ignoreNoise: false, useCheck: false);
    testCase("  341071000090 108", [], ignoreNoise: false, useCheck: false);
    testCase("3.-78967557334965", [], ignoreNoise: false, useCheck: false);
  });

  test("ShouldIdentifyAnonymizedCard", () {
    testCase("4169773####8##17", [CardType.Visa],
        useCheck: false, handleAnonymization: true);
    testCase("4V15482254583145", [CardType.Visa],
        useCheck: false, handleAnonymization: true);
    testCase("47CH1P0L4T4371UV", [CardType.Visa],
        useCheck: false, handleAnonymization: true);
    testCase("4169773####8##17", [],
        useCheck: false, handleAnonymization: false);
    testCase("4V15482254583145", [],
        useCheck: false, handleAnonymization: false);
    testCase("47CH1P0L4T4371UV", [],
        useCheck: false, handleAnonymization: false);
  });
}

void testCase(
  String testCardNumber,
  List<CardType> expectedResult, {
  bool validateLength = true,
  bool useCheck = true,
  bool ignoreNoise = false,
  bool handleAnonymization = false,
  bool expectSuccess = true,
}) {
  var result = FlutterCardidy.identify(
    testCardNumber,
    validateLength: validateLength,
    useCheck: useCheck,
    ignoreNoise: ignoreNoise,
    handleAnonymization: handleAnonymization,
  );

  var isSuccess = false;

  if (expectedResult.isNotEmpty) {
    for (var er in expectedResult) {
      isSuccess = result.any((element) => element.toString() == er.toString());
    }
    expect(expectSuccess, isSuccess);
  } else {
    expect(result.length, expectedResult.length);
  }
}
