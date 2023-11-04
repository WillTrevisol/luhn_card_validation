import 'package:luhn_card_validation/brand.dart';

class CardBrandChecker {

  static Brand brand(String cardNumber) {
    final initialCardNumbers = cardNumber.substring(0, 2);
    Brand brand = Brand.unknow;

    cardsIIN.forEach((brandKey, setOfIIN) {
      for (final iin in setOfIIN) {
        if (initialCardNumbers == iin) {
          brand = brandKey;
        }
      }
    });

    return brand;
  }
}
