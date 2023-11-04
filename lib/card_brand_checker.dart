import 'package:luhn_card_validation/brand.dart';

class CardBrandChecker {

  static Brand brand(String cardNumber) {
    Brand brand = Brand.unknow;

    for (final cardBinMap in cardsBin.entries) {
      for (final cardBinSet in cardBinMap.value) {
        final binLenght = cardBinSet.first.toString().length;
        int cardBin = 0;
        if (binLenght < cardNumber.length) {
          cardBin = int.parse(cardNumber.substring(0, binLenght));
        }

        if (cardBinMap.value.length > 1) {
          if (cardBin >= cardBinSet.first && cardBin <= cardBinSet.last) {
            brand = cardBinMap.key;
            break;
          }
        } else {
          if (cardBin == cardBinSet.first) {
            brand = cardBinMap.key;
            break;
          }
        }
      }
      
      if (brand != Brand.unknow) {
        break;
      }
    }

    return brand;
  }
}
