import 'package:flavorsexample/flavor_config.dart';
import 'package:flavorsexample/main.dart';
import 'package:flutter/material.dart';

void main() {
  FlavorConfig(flavor: Flavor.DEV,
      color: Colors.green,
      values: FlavorValues(baseUrl: "")
  );

  runApp(MyApp());
}