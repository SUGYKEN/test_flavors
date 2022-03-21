import 'package:flavorsexample/flavor_config.dart';
import 'package:flutter/material.dart';
import 'package:flavorsexample/main.dart';

void main() {
  FlavorConfig(flavor: Flavor.QA,
      color: Colors.deepPurpleAccent,
      values: FlavorValues(
          baseUrl: "https://raw.githubusercontent.com/JHBitencourt/ready_to_go/master/lib/json/person_qa.json"
      )
  );

  runApp(MyApp());
}