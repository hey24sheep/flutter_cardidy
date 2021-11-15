/// <summary>
/// Validate or identify card number & cvv without the use of regex.
/// This is a port of original Cardidy (https://github.com/d-edge/Cardidy) by D-Edge
///
/// Author : Heyramb Narayan Goyal (https://hey24sheep.com)
/// Repo : https://github.com/hey24sheep/flutter-cardidy
/// License : MIT
///
/// Original Repo : Cardidy (https://github.com/d-edge/Cardidy) written in C#
/// Original License : MIT (as of Nov 2021)
/// </summary>
library flutter_cardidy;

import 'src/cardidy.dart';

class FlutterCardidy {
  static const int _identificationNumberLength = 8;

  // The order matters since some cards can be superseded by other
  // ie. VisaElectron should be checked before Visa
  // ie. Verve should be checked before Discover
  static final List<ICard> _knownCards = [
    AmericanExpress(),
    Uatp(),
    Jcb(),
    Mir(),
    Verve(),
    Discover(),
    UnionPay(),
    MaestroUk(),
    Maestro(),
    MasterCard(),
    VisaElectron(),
    Visa(),
    BankCard(),
    UkrCard(),
    ChinaTUnion(),
    InterPayment(),
    RuPay(),
    InstaPayment(),
    Laser(),
    Troy(),
    LankaPay(),
    Humo(),
    UzCard()
  ];

  /// Pass card number and it will return list of matching issuing network, if found.
  ///
  /// [cardNumString] The card number to identify.
  ///
  /// [validateLength] Validate the length as part of the String identification.
  /// A false value can be useful to identify the fragment of a card number.
  /// Default is true.
  ///
  /// [useCheck] Validate the card number as part of the String identification.
  /// A false value can be useful to identify the fragment of a card number.
  /// The validation will be the issuing network's validation, mostly Luhn.
  /// Default is true.
  ///
  /// [ignoreNoise] Ignore common noise found in card number.
  /// This noise is any of `- .`. Default is false.
  ///
  /// [handleAnonymization] Set any non-digits to zero.
  /// It is common to use "X" and "#" to hide some digits. Default is false.
  ///
  /// ```dart
  /// var card = "4771320594033";
  /// var identifiedCards = FlutterCardidy.Identify(card);
  /// var isVisa = identifiedCards.isNotEmpty ?
  ///     identifiedCards.first == CardType.Visa : false;
  /// ```
  ///
  /// returns `List<CardType> list of issuing network identified`.
  static List<CardType> identify(
    String cardNumString, {
    bool validateLength = true,
    bool useCheck = true,
    bool ignoreNoise = false,
    bool handleAnonymization = false,
  }) {
    if (!cardNumString.isCardNumberValid(handleAnonymization)) {
      return List<CardType>.empty();
    }

    var digits = cardNumString.toDigits(ignoreNoise: ignoreNoise);

    var identificationNumber = digits
        .take(_identificationNumberLength)
        .toList()
        .toNumber()
        .padRight(_identificationNumberLength, 0);

    var isStrict = validateLength && !handleAnonymization;

    return _knownCards
        .where((knownCard) => knownCard.prefixes.any((prefix) =>
            prefix.contains(identificationNumber) &&
            (!validateLength || knownCard.lengths.contains(digits.length)) &&
            (!useCheck || isStrict && knownCard.check(digits))))
        .map((x) => x.name)
        .toList();
  }

  /// A batch identify wrapper on top of identify func
  ///
  /// [cardNumString] The card number to identify.
  ///
  /// [validateLength] Validate the length as part of the String identification.
  /// A false value can be useful to identify the fragment of a card number.
  /// Default is true.
  ///
  /// [useCheck] Validate the card number as part of the String identification.
  /// A false value can be useful to identify the fragment of a card number.
  /// The validation will be the issuing network's validation, mostly Luhn.
  /// Default is true.
  ///
  /// [ignoreNoise] Ignore common noise found in card number.
  /// This noise is any of `- .`. Default is false.
  ///
  /// [handleAnonymization] Set any non-digits to zero.
  /// It is common to use "X" and "#" to hide some digits. Default is false.
  ///
  /// ```dart
  /// var card1 = "2201200000000000";
  /// var card2 = "5110710000901089";
  /// var identifiedCardsMap = FlutterCardidy.Identify([card1, card2]);
  /// ```
  ///
  /// returns a map of `CardNumber (key)` and `Identified Card Type (value)`
  static Map<String, List<CardType>> identifyMultiple(
    List<String> cards, {
    bool validateLength = true,
    bool useCheck = true,
    bool ignoreNoise = false,
    bool handleAnonymization = false,
  }) {
    Map<String, List<CardType>> results = {};
    if (cards.isNotEmpty) {
      for (var cardNum in cards) {
        var identifiedVendors = identify(
          cardNum,
          validateLength: validateLength,
          useCheck: useCheck,
          ignoreNoise: ignoreNoise,
          handleAnonymization: handleAnonymization,
        );
        results.putIfAbsent(cardNum, () => identifiedVendors);
      }
    }
    return results;
  }

  /// Pass card cvv and it will return its likely validity.
  ///
  /// This function checks if the cvv contains only digits
  /// and if its length matches the given issuing network.
  ///
  /// [cvv] The cvv to validate
  ///
  /// [cardType] The issuing network to validate against
  ///
  /// ```dart
  /// var cvv = "123";
  /// var visaCvvIsValid = FlutterCardidy.IsCvvValid(cvv, CardType.Visa);
  /// ```
  ///
  /// returns `True if it seems alright, else false.`
  static bool isCvvValid(
    String cvv,
    CardType cardType,
  ) {
    return cardType != CardType.Unknown &&
        (cvv.runes.every((element) => element.isDigit())) &&
        (cardType == CardType.AmericanExpress
            ? cvv.length == 4
            : cvv.length == 3);
  }

  /// Pass card number and it will return its likely validity.
  ///
  /// This function checks if the card number is not invalid,
  /// contains only digits, and is not shady
  ///
  /// [cardNumString] The card number to validate
  ///
  /// [handleAnonymization] Set any non-digits to zero.
  /// It is common to use "X" and "#" to hide some digits. Default is false.
  ///
  /// ```dart
  /// var isCardValid = FlutterCardidy.isCardNumberValid("47!Z320594033");
  /// ```
  ///
  /// returns `True if it seems alright, else false.`
  static bool isCardNumberValid(
    String cardNumString, {
    bool handleAnonymization = false,
  }) {
    return cardNumString.isCardNumberValid(handleAnonymization);
  }
}
