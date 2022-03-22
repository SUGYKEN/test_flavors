class EnvironmentConfig {
  static const APP_NAME = String.fromEnvironment(
      'DEFINEEXAMPLE_APP_NAME',
      defaultValue: 'awesomeApp'
  );
  static const APP_SUFFIX = String.fromEnvironment(
      'DEFINEEXAMPLE_APP_SUFFIX'
  );
}