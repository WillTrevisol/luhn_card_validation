import 'package:luhn_card_validation/brand.dart';

class CardValidationResult {
  CardValidationResult({
    required this.brand,
    required this.isValid,
  });

  final Brand brand;
  final bool isValid;
}
