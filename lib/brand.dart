enum Brand {
  mastercard('MasterCard'),
  maestro('Maestro'),
  visa('Visa'),
  visaElectron('Visa Electron'),
  jcb('JCB'),
  unknow('Unknow');

  const Brand(this.name);
  final String name;
}

Map<Brand, Set<List<int>>> cardsBin = {
  Brand.mastercard: {
    [510000, 559999],
    [222100, 272099],
  },
  Brand.maestro: {
    [639000, 639099],
    [670000, 679999],
  },
  Brand.visa: {
    [4],
  },
  Brand.visaElectron: {
    [4026],
    [417500],
    [4508],
    [4844],
    [4913],
    [4917],
  },
  Brand.jcb: {
    [3528, 3589],
  }
};
