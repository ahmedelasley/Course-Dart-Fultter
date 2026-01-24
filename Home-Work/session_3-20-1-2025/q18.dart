/*
Question 18
Write a Dart program that reads environment variables from a map. If a value is null, replace it with
a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
conditions.
*/

void main() {
  Map<String, dynamic> env = {
    'APP_ENV': 'prod',
    'DEBUG': null,
    'REGION': 'sa',
  };

  dynamic appEnv = (env['APP_ENV'] ?? 'dev').toUpperCase();
  dynamic debug = (env['DEBUG'] ?? 'false').toUpperCase();
  dynamic region = (env['REGION'] ?? 'unknown').toUpperCase();

  print('APP_ENV: $appEnv');
  print('DEBUG  : $debug');
  print('REGION : $region');

  bool isProd = (appEnv == 'PROD' || appEnv == 'PRODUCTION');
  bool debugOn = (debug == 'TRUE' || debug == '1');

  print(isProd && !debugOn ? 'Prod ready' : 'Non-prod');
}
