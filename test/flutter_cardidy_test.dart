import 'package:flutter_cardidy/flutter_cardidy.dart';
import 'package:flutter_cardidy/src/cardidy.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('ShouldIdentifyAsUnknownFalsyCase', () {
    testCase("", []);
    testCase("a", []);
    testCase("1", []);
    testCase("4", []);
  });

  test('ShouldIdentifyAsVisa', () {
    testCase("4169773331987017", [CardType.Visa]);
    testCase("4658958254583145", [CardType.Visa]);
    testCase("4771320594031", [CardType.Visa]);
  });

  test('ShouldIdentifyAsVisaElectron', () {
    testCase("4026-773331987017", [CardType.VisaElectron, CardType.Visa],
        useCheck: false, ignoreNoise: true);
    testCase("417500-3331987017", [CardType.VisaElectron, CardType.Visa],
        useCheck: false, ignoreNoise: true);
    testCase("4508-773331987017", [CardType.VisaElectron, CardType.Visa],
        useCheck: false, ignoreNoise: true);
    testCase("4844-773331987017", [CardType.VisaElectron, CardType.Visa],
        useCheck: false, ignoreNoise: true);
    testCase("4913-773331987017", [CardType.VisaElectron, CardType.Visa],
        useCheck: false, ignoreNoise: true);
    testCase("4917-773331987017", [CardType.VisaElectron, CardType.Visa],
        useCheck: false, ignoreNoise: true);
    testCase("4026-320594033", [CardType.Visa],
        useCheck: false, ignoreNoise: true);
    testCase("417500-3331917", [CardType.Visa],
        useCheck: false, ignoreNoise: true);
  });

  test('ShouldIdentifyAsMasterCard', () {
    testCase("5110710000901089", [CardType.MasterCard],
        useCheck: false, ignoreNoise: true);
    testCase("5289675573349651", [CardType.MasterCard],
        useCheck: false, ignoreNoise: true);
    testCase("5389675555733434", [CardType.MasterCard],
        useCheck: false, ignoreNoise: true);
    testCase("5489675573349651", [CardType.MasterCard],
        useCheck: false, ignoreNoise: true);
    testCase("5582128534772839", [CardType.MasterCard],
        useCheck: false, ignoreNoise: true);
    testCase("2221-774331987017", [CardType.MasterCard],
        useCheck: false, ignoreNoise: true);
    testCase("2330-773331987017", [CardType.MasterCard],
        useCheck: false, ignoreNoise: true);
    testCase("2631-775331987017", [CardType.MasterCard],
        useCheck: false, ignoreNoise: true);
    testCase("2720-773331987017", [CardType.MasterCard],
        useCheck: false, ignoreNoise: true);
  });

  test('ShouldIdentifyAsMaestro', () {
    testCase("5018-710000901089", [CardType.Maestro],
        useCheck: false, ignoreNoise: true);
    testCase("5020-710000901089", [CardType.Maestro],
        useCheck: false, ignoreNoise: true);
    testCase("5038-710000901089", [CardType.Maestro],
        useCheck: false, ignoreNoise: true);
    testCase("5893-710000901089", [CardType.Maestro],
        useCheck: false, ignoreNoise: true);
    testCase("6304-710000901089", [CardType.Maestro],
        useCheck: false, ignoreNoise: true);
    testCase("6761-710000901089", [CardType.Maestro],
        useCheck: false, ignoreNoise: true);
    testCase("6762-710000901089", [CardType.Maestro],
        useCheck: false, ignoreNoise: true);
    testCase("6763-710000901089", [CardType.Maestro],
        useCheck: false, ignoreNoise: true);
    testCase("5018-71000090", [CardType.Maestro],
        useCheck: false, ignoreNoise: true);
    testCase("5018-710000901", [CardType.Maestro],
        useCheck: false, ignoreNoise: true);
    testCase("5018-7100009012", [CardType.Maestro],
        useCheck: false, ignoreNoise: true);
    testCase("5018-71000090123", [CardType.Maestro],
        useCheck: false, ignoreNoise: true);
    testCase("5018-710000901234", [CardType.Maestro],
        useCheck: false, ignoreNoise: true);
    testCase("5018-7100009012345", [CardType.Maestro],
        useCheck: false, ignoreNoise: true);
    testCase("5018-71000090123456", [CardType.Maestro],
        useCheck: false, ignoreNoise: true);
    testCase("5018-710000901234567", [CardType.Maestro],
        useCheck: false, ignoreNoise: true);
  });

  test('ShouldIdentifyAsMaestroUk', () {
    testCase("676770-0000901089", [CardType.MaestroUk],
        useCheck: false, ignoreNoise: true);
    testCase("676774-0000901089", [CardType.MaestroUk],
        useCheck: false, ignoreNoise: true);
    testCase("676774-000090", [CardType.MaestroUk],
        useCheck: false, ignoreNoise: true);
    testCase("676774-0000901", [CardType.MaestroUk],
        useCheck: false, ignoreNoise: true);
    testCase("676774-00009012", [CardType.MaestroUk],
        useCheck: false, ignoreNoise: true);
    testCase("676774-000090123", [CardType.MaestroUk],
        useCheck: false, ignoreNoise: true);
    testCase("676774-0000901234", [CardType.MaestroUk],
        useCheck: false, ignoreNoise: true);
    testCase("676774-00009012345", [CardType.MaestroUk],
        useCheck: false, ignoreNoise: true);
    testCase("676774-000090123456", [CardType.MaestroUk],
        useCheck: false, ignoreNoise: true);
    testCase("676774-0000901234567", [CardType.MaestroUk],
        useCheck: false, ignoreNoise: true);
  });

  // note that: 6759 is shared by both MaestroUK & Maestro ¯\_(ツ)_/¯
  test('ShouldIdentifyAsMaestros', () {
    testCase("6759710000901011", [CardType.MaestroUk, CardType.Maestro]);
    testCase("6759710000901086", [CardType.MaestroUk, CardType.Maestro]);
  });

  test('ShouldIdentifyAsAmericanExpress', () {
    testCase("340000000000000", [CardType.AmericanExpress], useCheck: false);
    testCase("341071000090108", [CardType.AmericanExpress], useCheck: false);
    testCase("378967557334965", [CardType.AmericanExpress], useCheck: false);
  });

  test('ShouldIdentifyAsUatp', () {
    testCase("100000000000000", [CardType.Uatp]);
    testCase("141071000090108", [CardType.Uatp]);
  });

  test('ShouldIdentifyAsMir', () {
    testCase("2200200000000000", [CardType.Mir], useCheck: false);
    testCase("2201200000000000", [CardType.Mir], useCheck: false);
    testCase("2202200000000000", [CardType.Mir], useCheck: false);
    testCase("2203200000000000", [CardType.Mir], useCheck: false);
    testCase("2204200000000000", [CardType.Mir], useCheck: false);
  });

  test('ShouldIdentifyAsDiscover', () {
    testCase("6011-773331987017", [CardType.Discover, CardType.RuPay],
        useCheck: false, ignoreNoise: true);
    testCase(
        "65-18958254583145", [CardType.Discover, CardType.RuPay, CardType.Troy],
        useCheck: false, ignoreNoise: true);
    testCase("622126-1230594033", [CardType.Discover, CardType.UnionPay],
        useCheck: false, ignoreNoise: true);
    testCase("622225-1230594033", [CardType.Discover, CardType.UnionPay],
        useCheck: false, ignoreNoise: true);
    testCase("622925-1230594033", [CardType.Discover, CardType.UnionPay],
        useCheck: false, ignoreNoise: true);
    testCase("644-4441230594033", [CardType.Discover],
        useCheck: false, ignoreNoise: true);
    testCase("646-4441230594033", [CardType.Discover],
        useCheck: false, ignoreNoise: true);
    testCase("649-4441230594033", [CardType.Discover],
        useCheck: false, ignoreNoise: true);
    testCase("649-44412305940331", [CardType.Discover],
        useCheck: false, ignoreNoise: true);
    testCase("649-444123059403311", [CardType.Discover],
        useCheck: false, ignoreNoise: true);
    testCase("649-4441230594033111", [CardType.Discover],
        useCheck: false, ignoreNoise: true);
  });

  test('ShouldIdentifyAsVerve', () {
    testCase("5060990000000000", [CardType.Verve], useCheck: true);
    testCase("5061230000000000", [CardType.Verve], useCheck: true);
    testCase("5061980000000000", [CardType.Verve], useCheck: true);
    testCase("6500020000000001", [CardType.Verve], useCheck: true);
    testCase("6500100000000001", [CardType.Verve], useCheck: true);
    testCase("6500270000000000", [CardType.Verve], useCheck: true);
    testCase("6500270000000000000", [CardType.Verve], useCheck: true);
    testCase("6500020000000000",
        [CardType.Verve, CardType.Discover, CardType.RuPay, CardType.Troy],
        useCheck: false);
    testCase("6500100000000000",
        [CardType.Verve, CardType.Discover, CardType.RuPay, CardType.Troy],
        useCheck: false);
    testCase("6500270000000000",
        [CardType.Verve, CardType.Discover, CardType.RuPay, CardType.Troy],
        useCheck: false);
    testCase("65002700000000000", [CardType.Discover], useCheck: false);
    testCase("650027000000000000", [CardType.Discover], useCheck: false);
    testCase("6500270000000000000", [CardType.Verve, CardType.Discover],
        useCheck: false);
  });

  test('ShouldIdentifyAsUnionPay', () {
    testCase("6210553000273614", [CardType.UnionPay],
        useCheck: false, ignoreNoise: true);
    testCase("62105530002736140", [CardType.UnionPay],
        useCheck: false, ignoreNoise: true);
    testCase("621055300027361412", [CardType.UnionPay],
        useCheck: false, ignoreNoise: true);
    testCase("6210553000273614234", [CardType.UnionPay],
        useCheck: false, ignoreNoise: true);
  });

  test('ShouldIdentifyAsBankCard', () {
    testCase("5610553000273614", [CardType.BankCard],
        useCheck: false, ignoreNoise: true);
    testCase("5602213166347852", [CardType.BankCard],
        useCheck: false, ignoreNoise: true);
    testCase("5602253004948429", [CardType.BankCard],
        useCheck: false, ignoreNoise: true);
  });

  test('ShouldIdentifyAsUkrCard', () {
    testCase("6040010060406040", [CardType.UkrCard],
        useCheck: false, ignoreNoise: true);
    testCase("6042009999000000", [CardType.UkrCard],
        useCheck: false, ignoreNoise: true);
    testCase("60420099990000001", [CardType.UkrCard],
        useCheck: false, ignoreNoise: true);
    testCase("604200999900000012", [CardType.UkrCard],
        useCheck: false, ignoreNoise: true);
    testCase("6040010000000000000", [CardType.UkrCard],
        useCheck: false, ignoreNoise: true);
    testCase("6042009900000000000", [CardType.UkrCard],
        useCheck: false, ignoreNoise: true);
  });

  test('ShouldIdentifyAsChinaTUnion', () {
    testCase("3104930400000001932", [CardType.ChinaTUnion],
        useCheck: false, ignoreNoise: true);
    testCase("3105071901000005001", [CardType.ChinaTUnion],
        useCheck: false, ignoreNoise: true);
    testCase("3104830500000000001", [CardType.ChinaTUnion],
        useCheck: false, ignoreNoise: true);
  });

  test('ShouldIdentifyAsInterPayment', () {
    testCase("6364930400000001", [CardType.InterPayment],
        useCheck: false, ignoreNoise: true);
    testCase("63650719010000050", [CardType.InterPayment],
        useCheck: false, ignoreNoise: true);
    testCase("636483050000000001", [CardType.InterPayment],
        useCheck: false, ignoreNoise: true);
    testCase("6364830500000000001", [CardType.InterPayment],
        useCheck: false, ignoreNoise: true);
  });

  // note that: 65 is shared by both RuPay and Discover; 353 and 356 are part of JCB Card
  test('ShouldIdentifyAsRuPay', () {
    testCase("6000123456789010", [CardType.RuPay],
        useCheck: false, ignoreNoise: true);
    testCase(
        "6505071901000005", [CardType.Discover, CardType.RuPay, CardType.Troy],
        useCheck: false, ignoreNoise: true);
    testCase("8104830500000000", [CardType.RuPay],
        useCheck: false, ignoreNoise: true);
    testCase("8204930400000001", [CardType.RuPay],
        useCheck: false, ignoreNoise: true);
    testCase("3534930400000001", [CardType.Jcb, CardType.RuPay],
        useCheck: false, ignoreNoise: true);
    testCase("3564930400000001", [CardType.Jcb, CardType.RuPay],
        useCheck: false, ignoreNoise: true);
    testCase("5084830500000000", [CardType.RuPay],
        useCheck: false, ignoreNoise: true);
  });

  test('ShouldIdentifyAsInstaPayment', () {
    testCase("6378041128616666", [CardType.InstaPayment],
        useCheck: true, ignoreNoise: true);
    testCase("6370871259156324", [CardType.InstaPayment],
        useCheck: true, ignoreNoise: true);
    testCase("6379373029422806", [CardType.InstaPayment],
        useCheck: true, ignoreNoise: true);
    testCase("6384395716103251", [CardType.InstaPayment],
        useCheck: true, ignoreNoise: true);
    testCase("6381720515879954", [CardType.InstaPayment],
        useCheck: true, ignoreNoise: true);
    testCase("6398746976455613", [CardType.InstaPayment],
        useCheck: true, ignoreNoise: true);
    testCase("6384960368309025--", [CardType.InstaPayment],
        useCheck: true, ignoreNoise: true);
  });

  test('ShouldIdentifyAsLaser', () {
    testCase("6709123456789876", [CardType.Laser],
        useCheck: false, ignoreNoise: true);
    testCase("6771123456789876", [CardType.Laser],
        useCheck: false, ignoreNoise: true);
    testCase("6304000004583145", [CardType.Maestro, CardType.Laser],
        useCheck: false, ignoreNoise: true);
    testCase("6706710000901089", [CardType.Laser],
        useCheck: false, ignoreNoise: true);
  });

  test('ShouldIdentifyAsTroy', () {
    testCase("9792123456789876", [CardType.Troy],
        useCheck: false, ignoreNoise: true);
    testCase(
        "65-00000004583145",
        [
          CardType.Discover,
          CardType.RuPay,
          CardType.Troy,
        ],
        useCheck: false,
        ignoreNoise: true);
  });

  test('ShouldIdentifyAsHumo', () {
    testCase("9860123456789876", [CardType.Humo]);
    testCase("9860010102205720", [CardType.Humo]);
  });

  test('ShouldIdentifyAsLankaPay', () {
    testCase("3571110500000000", [CardType.LankaPay]);
    testCase("3571110102205720", [CardType.LankaPay]);
  });

  test('ShouldIdentifyAsUzCard', () {
    testCase("8600000000500700", [CardType.UzCard]);
    testCase("8600002200510732", [CardType.UzCard]);
  });
}

void testCase(
  String testCardNumber,
  List<CardType> expectedResult, {
  bool useCheck = true,
  bool ignoreNoise = false,
  bool expectSuccess = true,
}) {
  var result = FlutterCardidy.identify(testCardNumber,
      useCheck: useCheck, ignoreNoise: ignoreNoise);

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
