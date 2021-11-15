// superd on https://en.wikipedia.org/wiki/Payment_card_number

import 'acard.dart';
import 'aluhn_card.dart';
import 'card_type.dart';
import 'padded_range.dart';

const fifteen = [15];
const sixteen = [16];
const nineteen = [19];
const from12To19 = [12, 13, 14, 15, 16, 17, 18, 19];
const from16To19 = [16, 17, 18, 19];

class AmericanExpress extends ALuhnCard {
  AmericanExpress()
      : super.intList(CardType.AmericanExpress, [34, 37], fifteen);
}

class Uatp extends ACard {
  Uatp() : super(CardType.Uatp, 1, fifteen);
}

class Mir extends ALuhnCard {
  Mir()
      : super.paddedRange(CardType.Mir, [PaddedRange(2200, 2204)], from16To19);
}

class VisaElectron extends ALuhnCard {
  VisaElectron()
      : super.intList(CardType.VisaElectron,
            [4026, 417500, 4508, 4844, 4913, 4917], sixteen);
}

class Visa extends ALuhnCard {
  Visa() : super(CardType.Visa, 4, [13, 16]);
}

class UnionPay extends ALuhnCard {
  UnionPay() : super(CardType.UnionPay, 62, from16To19);
}

class Verve extends ACard {
  Verve()
      : super.paddedRange(
            CardType.Verve,
            [PaddedRange(506099, 506198), PaddedRange(650002, 650027)],
            [16, 19]);
}

class Discover extends ALuhnCard {
  Discover()
      : super.paddedRange(
            CardType.Discover,
            [
              PaddedRange.fix(6011),
              PaddedRange(622126, 622925),
              PaddedRange(644, 649),
              PaddedRange.fix(65)
            ],
            from16To19);
}

class MaestroUk extends ALuhnCard {
  MaestroUk()
      : super.intList(CardType.MaestroUk, [6759, 676770, 676774], from12To19);
}

class Maestro extends ALuhnCard {
  Maestro()
      : super.intList(CardType.Maestro,
            [5018, 5020, 5038, 5893, 6304, 6759, 6761, 6762, 6763], from12To19);
}

class MasterCard extends ALuhnCard {
  MasterCard()
      : super.paddedRange(CardType.MasterCard,
            [PaddedRange(51, 55), PaddedRange(2221, 2720)], sixteen);
}

class Jcb extends ALuhnCard {
  Jcb()
      : super.paddedRange(CardType.Jcb, [PaddedRange(3528, 3589)], from16To19);
}

class BankCard extends ALuhnCard {
  BankCard()
      : super.paddedRange(CardType.BankCard,
            [PaddedRange.fix(5610), PaddedRange(560221, 560225)], sixteen);
}

class UkrCard extends ALuhnCard {
  UkrCard()
      : super.paddedRange(
            CardType.UkrCard, [PaddedRange(60400100, 60420099)], from16To19);
}

class ChinaTUnion extends ALuhnCard {
  ChinaTUnion() : super(CardType.ChinaTUnion, 31, nineteen);
}

class InterPayment extends ALuhnCard {
  InterPayment() : super(CardType.InterPayment, 636, from16To19);
}

class RuPay extends ALuhnCard {
  RuPay()
      : super.intList(CardType.RuPay, [60, 65, 81, 82, 353, 356, 508], sixteen);
}

class InstaPayment extends ALuhnCard {
  InstaPayment()
      : super.paddedRange(
            CardType.InstaPayment, [PaddedRange(637, 639)], sixteen);
}

class Laser extends ALuhnCard {
  Laser() : super.intList(CardType.Laser, [6304, 6706, 6771, 6709], from16To19);
}

class Troy extends ALuhnCard {
  Troy() : super.intList(CardType.Troy, [65, 9792], sixteen);
}

class LankaPay extends ACard {
  LankaPay() : super(CardType.LankaPay, 357111, sixteen);
}

class Humo extends ACard {
  Humo() : super(CardType.Humo, 9860, sixteen);
}

class UzCard extends ACard {
  UzCard() : super(CardType.UzCard, 8600, sixteen);
}
