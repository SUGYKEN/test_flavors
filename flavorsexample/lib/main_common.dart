import 'package:flavorsexample/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flavorsexample/app_config.dart';

void mainCommon() {
  // Here would be background init code, if any
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return _buildApp(config?.appDisplayName);
  }

  Widget _buildApp(String? appName){
    return MaterialApp(
      title: appName ?? "something wrong",
      theme: ThemeData(
        primaryColor: const Color(0xFF43a047),
        accentColor: const Color(0xFFffcc00),
        primaryColorBrightness: Brightness.dark,
      ),
      home: const HomePage(),
    );
  }
}
