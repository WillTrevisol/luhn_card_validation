class Luhn {

  static bool validate(String cardNumber) {
    int cardDigitsSum = 0;
    bool pair = false;

    for (int i = cardNumber.length; i > 0; i--) {
      int digit = int.parse(cardNumber[i -1]);

      if (pair) {
        digit *= 2;
        if (digit > 9) {
          digit = (digit % 10) + 1;
        }
      }

      cardDigitsSum += digit;
      pair = !pair;
    }

    return (cardDigitsSum % 10) == 0;
  }

}
