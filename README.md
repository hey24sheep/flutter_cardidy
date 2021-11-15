# Flutter Cardidy
[![pub package publisher](https://img.shields.io/badge/pub.dev-01579b.svg?style=flat-square&logo=dart&logoColor=white)](https://pub.dev/publishers/hey24sheep.com/packages)
[![pub package](https://img.shields.io/pub/v/flutter_cardidy.svg?style=flat-square)](https://pub.dartlang.org/packages/flutter_cardidy)
[![GitHub Stars](https://img.shields.io/github/stars/hey24sheep/flutter_cardidy.svg?style=flat-square&logo=github)](https://github.com/hey24sheep/flutter_cardidy)
[![Platform](https://img.shields.io/badge/platform-android%20|%20ios-green.svg?style=flat-square&color=9cf)](https://img.shields.io/badge/platform-Android%20%7C%20iOS-green.svg)

<a href="https://www.buymeacoffee.com/hey24sheep" target="_blank"><img src="https://img.shields.io/badge/buy%20me%20a%20coffee-F5E800.svg?style=for-the-badge&logoColor=white&logo=data:image/svg+xml;base64,PHN2ZyByb2xlPSJpbWciIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgdmlld0JveD0iMCAwIDI0IDI0Ij48dGl0bGU+QnV5IE1lIEEgQ29mZmVlIGljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMC4yMTYgNi40MTVsLS4xMzItLjY2NmMtLjExOS0uNTk4LS4zODgtMS4xNjMtMS4wMDEtMS4zNzktLjE5Ny0uMDY5LS40Mi0uMDk4LS41Ny0uMjQxLS4xNTItLjE0My0uMTk2LS4zNjYtLjIzMS0uNTcyLS4wNjUtLjM3OC0uMTI1LS43NTYtLjE5Mi0xLjEzMy0uMDU3LS4zMjUtLjEwMi0uNjktLjI1LS45ODctLjE5NS0uNC0uNTk3LS42MzQtLjk5Ni0uNzg4YTUuNzIzIDUuNzIzIDAgMDAtLjYyNi0uMTk0Yy0xLS4yNjMtMi4wNS0uMzYtMy4wNzctLjQxNmEyNS44MzQgMjUuODM0IDAgMDAtMy43LjA2MmMtLjkxNS4wODMtMS44OC4xODQtMi43NS41LS4zMTguMTE2LS42NDYuMjU2LS44ODguNTAxLS4yOTcuMzAyLS4zOTMuNzctLjE3NyAxLjE0Ni4xNTQuMjY3LjQxNS40NTYuNjkyLjU4LjM2LjE2Mi43MzcuMjg0IDEuMTIzLjM2NiAxLjA3NS4yMzggMi4xODkuMzMxIDMuMjg3LjM3IDEuMjE4LjA1IDIuNDM3LjAxIDMuNjUtLjExOC4yOTktLjAzMy41OTgtLjA3My44OTYtLjExOS4zNTItLjA1NC41NzgtLjUxMy40NzQtLjgzNC0uMTI0LS4zODMtLjQ1Ny0uNTMxLS44MzQtLjQ3My0uNDY2LjA3NC0uOTYuMTA4LTEuMzgyLjE0Ni0xLjE3Ny4wOC0yLjM1OC4wODItMy41MzYuMDA2YTIyLjIyOCAyMi4yMjggMCAwMS0xLjE1Ny0uMTA3Yy0uMDg2LS4wMS0uMTgtLjAyNS0uMjU4LS4wMzYtLjI0My0uMDM2LS40ODQtLjA4LS43MjQtLjEzLS4xMTEtLjAyNy0uMTExLS4xODUgMC0uMjEyaC4wMDVjLjI3Ny0uMDYuNTU3LS4xMDguODM4LS4xNDdoLjAwMmMuMTMxLS4wMDkuMjYzLS4wMzIuMzk0LS4wNDhhMjUuMDc2IDI1LjA3NiAwIDAxMy40MjYtLjEyYy42NzQuMDE5IDEuMzQ3LjA2NyAyLjAxNy4xNDRsLjIyOC4wMzFjLjI2Ny4wNC41MzMuMDg4Ljc5OC4xNDUuMzkyLjA4NS44OTUuMTEzIDEuMDcuNTQyLjA1NS4xMzcuMDguMjg4LjExMS40MzFsLjMxOSAxLjQ4NGEuMjM3LjIzNyAwIDAxLS4xOTkuMjg0aC0uMDAzYy0uMDM3LjAwNi0uMDc1LjAxLS4xMTIuMDE1YTM2LjcwNCAzNi43MDQgMCAwMS00Ljc0My4yOTUgMzcuMDU5IDM3LjA1OSAwIDAxLTQuNjk5LS4zMDRjLS4xNC0uMDE3LS4yOTMtLjA0Mi0uNDE3LS4wNi0uMzI2LS4wNDgtLjY0OS0uMTA4LS45NzMtLjE2MS0uMzkzLS4wNjUtLjc2OC0uMDMyLTEuMTIzLjE2MS0uMjkuMTYtLjUyNy40MDQtLjY3NS43MDEtLjE1NC4zMTYtLjE5OS42Ni0uMjY3IDEtLjA2OS4zNC0uMTc2LjcwNy0uMTM1IDEuMDU2LjA4Ny43NTMuNjEzIDEuMzY1IDEuMzcgMS41MDJhMzkuNjkgMzkuNjkgMCAwMDExLjM0My4zNzYuNDgzLjQ4MyAwIDAxLjUzNS41M2wtLjA3MS42OTctMS4wMTggOS45MDdjLS4wNDEuNDEtLjA0Ny44MzItLjEyNSAxLjIzNy0uMTIyLjYzNy0uNTUzIDEuMDI4LTEuMTgyIDEuMTcxLS41NzcuMTMxLTEuMTY1LjItMS43NTYuMjA1LS42NTYuMDA0LTEuMzEtLjAyNS0xLjk2Ni0uMDIyLS42OTkuMDA0LTEuNTU2LS4wNi0yLjA5NS0uNTgtLjQ3NS0uNDU4LS41NC0xLjE3NC0uNjA1LTEuNzkzbC0uNzMxLTcuMDEzLS4zMjItMy4wOTRjLS4wMzctLjM1MS0uMjg2LS42OTUtLjY3OC0uNjc4LS4zMzYuMDE1LS43MTguMy0uNjc4LjY3OWwuMjI4IDIuMTg1Ljk0OSA5LjExMmMuMTQ3IDEuMzQ0IDEuMTc0IDIuMDY4IDIuNDQ2IDIuMjcyLjc0Mi4xMiAxLjUwMy4xNDQgMi4yNTcuMTU2Ljk2Ni4wMTYgMS45NDIuMDUzIDIuODkyLS4xMjIgMS40MDgtLjI1OCAyLjQ2NS0xLjE5OCAyLjYxNi0yLjY1Ny4zNC0zLjMzMi42ODMtNi42NjMgMS4wMjQtOS45OTVsLjIxNS0yLjA4N2EuNDg0LjQ4NCAwIDAxLjM5LS40MjZjLjQwMi0uMDc4Ljc4Ny0uMjEyIDEuMDc0LS41MTguNDU1LS40ODguNTQ2LTEuMTI0LjM4NS0xLjc2NnptLTEuNDc4Ljc3MmMtLjE0NS4xMzctLjM2My4yMDEtLjU3OC4yMzMtMi40MTYuMzU5LTQuODY2LjU0LTcuMzA4LjQ2LTEuNzQ4LS4wNi0zLjQ3Ny0uMjU0LTUuMjA3LS40OTgtLjE3LS4wMjQtLjM1My0uMDU1LS40Ny0uMTgtLjIyLS4yMzYtLjExMS0uNzEtLjA1NC0uOTk1LjA1Mi0uMjYuMTUyLS42MDkuNDYzLS42NDYuNDg0LS4wNTcgMS4wNDYuMTQ4IDEuNTI2LjIyLjU3Ny4wODggMS4xNTYuMTU5IDEuNzM3LjIxMiAyLjQ4LjIyNiA1LjAwMi4xOSA3LjQ3Mi0uMTQuNDUtLjA2Ljg5OS0uMTMgMS4zNDUtLjIxLjM5OS0uMDcyLjg0LS4yMDYgMS4wOC4yMDYuMTY2LjI4MS4xODguNjU3LjE2Mi45NzRhLjU0NC41NDQgMCAwMS0uMTY5LjM2NHptLTYuMTU5IDMuOWMtLjg2Mi4zNy0xLjg0Ljc4OC0zLjEwOS43ODhhNS44ODQgNS44ODQgMCAwMS0xLjU2OS0uMjE3bC44NzcgOS4wMDRjLjA2NS43OC43MTcgMS4zOCAxLjUgMS4zOCAwIDAgMS4yNDMuMDY1IDEuNjU4LjA2NS40NDcgMCAxLjc4Ni0uMDY1IDEuNzg2LS4wNjUuNzgzIDAgMS40MzQtLjYgMS40OTktMS4zOGwuOTQtOS45NWEzLjk5NiAzLjk5NiAwIDAwLTEuMzIyLS4yMzhjLS44MjYgMC0xLjQ5MS4yODQtMi4yNi42MTN6Ii8+PC9zdmc+&logoColor=white" alt="Buy Me A Coffee" height="41" width="174">
</a>

**A plugin to validate or identify card numbers & cvv with ease.**

This flutter package will help you validate **card numbers or CVVs** and identiy **card issuing provider** with **minimal code and efforts**. 

- **simple and easy**
- **regex-free**
- **up-to-date with Wikipedia**
- **no other dependencies**
- **well documented**
- **production-ready**

### This package is a Flutter port of original package [Cardidy](https://github.com/d-edge/Cardidy) written in C#.

</br>

> NOTE: The closer we are to an official spec is the <a href="https://en.wikipedia.org/wiki/Payment_card_number#Issuer_identification_number_(IIN)">Wikipedia's Payment card number page</a>.

## Installation

```dart
      dependencies:
        flutter_cardidy: ^2.0.1
```

## Getting Started

Add the dependency to your project and start using **Flutter Cardidy** everywhere:

Import the package.

```dart
import 'package:flutter_cardidy/flutter_cardidy.dart';
```

To validate and identify card's issuing provider

```dart
// single card number identification
final result = FlutterCardidy.Identify("4127540509730813");
Console.WriteLine(result.first); // print Visa
```

Multi card identification

```dart
// returns a KVP Map of, cardnum as key & result as value
final mapResult = FlutterCardidy.Identify(["4127540509730813","4771320594031"]);
```

Validating CVV

```dart
var cvv = "123";
var visaCvvIsValid = FlutterCardidy.IsCvvValid(cvv, CardType.Visa);
```

Validating card number without identification

```dart
var isCardValid = FlutterCardidy.isCardNumberValid("47!Z320594033");
```

For more details have a look at the other [examples](https://github.com/hey24sheep/flutter_cardidy/tree/master/example).

## Properties

> Return type of `Identify` is `List<CardType>`. A card is sometimes a co-branded card like Visa or Visa Electron, in this case all matching providers are returned.

| Property                 	|  Type  	| Default 	|                                                                                                                                Note 	|
|--------------------------	|:------:	|:-------:	|------------------------------------------------------------------------------------------------------------------------------------:	|
| cardNumString (required) 	| String 	|    -    	|                                                                                                       Your card number input string 	|
| validateLength           	| bool   	| true    	| Validate the length as part of the String identification.<br>A false value can be useful to identify the fragment of a card number. 	|
| ignoreNoise              	| bool   	| false   	| Ignore common noise found in card number. This noise is any of `- .`.                                                               	|
| handleAnonymization      	| bool   	| false   	| Set any non-digits to zero. It is common to use "X" and "#" to hide some digits.                                                    	|

## Improve

Help me by reporting bugs, **submit new ideas** for features or anything else that you want to share.

- Just [write an issue](https://github.com/hey24sheep/flutter_cardidy/issues) on GitHub. ✏️
- And don't forget to hit the **like button** for this package ✌️

## More

Check out my other useful packages on [pub.dev](https://pub.dev/publishers/hey24sheep.com/packages)

## License
[MIT](https://github.com/hey24sheep/flutter_cardidy)