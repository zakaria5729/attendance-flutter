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
      return "https://api.tazkia.dhrubok.me/api";

    case Environment.PRODUCTION:
      return "https://api.tazkiafoundation.com/api";
  }
}
