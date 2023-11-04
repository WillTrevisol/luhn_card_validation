enum Brand {
  mastercard('MasterCard'),
  visa('Visa'),
  unknow('Unknow');

  const Brand(this.name);
  final String name;
}

Map<Brand, Set<String>> cardsIIN = {
  Brand.mastercard: {
    '50',
    '51',
    '52',
    '53',
    '54',
    '55',
  },
  Brand.visa: {
    '40',
    '41',
    '42',
    '43',
    '44',
    '45',
    '46',
    '47',
    '48',
    '49',
  }
};
