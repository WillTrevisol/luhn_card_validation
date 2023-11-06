import 'package:luhn_card_validation/brand.dart';
import 'package:luhn_card_validation/card_brand_checker.dart';
import 'package:luhn_card_validation/card_validation_result.dart';
import 'package:luhn_card_validation/luhn.dart';

class CardValidator {

  static CardValidationResult validate(String value) {
    final cardNumber = value.replaceAll(' ', '');
    final Brand brand = CardBrandChecker.brand(cardNumber);
    final bool valid = Luhn.validate(cardNumber);

    return CardValidationResult(brand: brand, valid: valid);
  }

}
