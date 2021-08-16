enum Flavor {
  DEV,
  PROD,
  HOM,
  QA,
}

class F {
  static Flavor appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.PROD:
        return 'AppName Prod';
      case Flavor.HOM:
        return 'AppName Hom';
      case Flavor.QA:
        return 'AppName Qa';
      case Flavor.DEV:
      default:
        return 'AppName Dev';
    }
  }

  static String get baseURL {
    switch (appFlavor) {
      case Flavor.PROD:
        return 'https://api.prod.com.br';
      case Flavor.HOM:
        return 'https://api.hom.com.br';
      case Flavor.QA:
        return 'https://api.qa.com.br';
      case Flavor.DEV:
      default:
        return 'https://api.dev.com.br';
    }
  }

  static bool get isDev => F.appFlavor == Flavor.DEV;
  static bool get isProd => F.appFlavor == Flavor.PROD;
  static bool get isQa => F.appFlavor == Flavor.QA;
  static bool get isHom => F.appFlavor == Flavor.HOM;
}
