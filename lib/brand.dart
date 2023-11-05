enum Brand {
  mastercard('MasterCard'),
  maestro('Maestro'),
  visa('Visa'),
  visaElectron('Visa Electron'),
  jcb('JCB'),
  americanExpress('American Express'),
  unknow('Unknow Brand');

  const Brand(this.name);
  final String name;
}

class Bins {
  static const Map<Brand, Set<List<int>>> values = {
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
    },
    Brand.americanExpress: {
      [34],
      [37]
    }
  };
}
