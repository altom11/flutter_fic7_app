import 'package:money_formatter/money_formatter.dart';

extension PriceExtension on String {
  String formatPrice() {
    MoneyFormatter fmf = MoneyFormatter(
        amount: double.parse(this),
        settings: MoneyFormatterSettings(
          symbol: 'Rp.',
          thousandSeparator: '.',
          // decimalSeparator: ',',
          symbolAndNumberSeparator: ' ',
          fractionDigits: 0,
        ));
    return fmf.output.symbolOnLeft;
  }
}
