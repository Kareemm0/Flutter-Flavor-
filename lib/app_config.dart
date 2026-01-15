class AppConfig {
  static late final String flavor;
  static late final String appName;
  static String? _customBaseUrl;

  static String get baseUrl {
    if (_customBaseUrl != null && _customBaseUrl!.isNotEmpty) {
      return _customBaseUrl!;
    }
    return switch (flavor) {
      'demo' => 'https://test.mdkhl.com/',
      'dev' => 'https://demo.mdkhl.com/',
      'pro' => 'https://app.mdkhl.com/',
      _ => 'https://demo.mdkhl.com/',
    };
  }

  static void setup({required String flavor, String? baseUrl}) {
    AppConfig.flavor = flavor;
    AppConfig._customBaseUrl = baseUrl;
    AppConfig.appName = switch (flavor) {
      'demo' => 'Demo App',
      'dev' => 'Dev App',
      'pro' => 'Pro App',
      _ => 'My App',
    };
  }
}
