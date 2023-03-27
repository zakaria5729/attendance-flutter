enum Environment {
  DEVELOPMENT,
  STAGING,
  PRODUCTION,
}

const Environment activeProfile = Environment.DEVELOPMENT;

String get getBaseUrl {
  switch (activeProfile) {
    case Environment.DEVELOPMENT:
      return "http://128.199.215.102:4040/api";

    case Environment.STAGING:
      return "http://128.199.215.102:4040/api";

    case Environment.PRODUCTION:
      return "http://128.199.215.102:4040/api";
  }
}
