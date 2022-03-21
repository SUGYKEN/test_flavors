import 'package:flavorsexample/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flavorsexample/resource/display_strings.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(config?.appDisplayName ?? "Flavors Example"),
      ),
      body: _buildBody(config?.appDisplayName),
    );
  }

  Widget _buildBody(String? appName) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(appName ?? "Flavors Example"),
              Text(DATE + getDateForDisplay()),
              Text(APP_DESCRIPTION),
              Image.asset('assets/dancing.png', width: 50.0, height: 50.0,),
              Image.asset('assets/1.png', width: 50.0, height: 50.0),
            ],
          ),
        )
    );
  }

  String getDateForDisplay() {
    DateTime now = DateTime.now();
    var formatter = DateFormat('EEEE dd MMMM yyyy');
    return formatter.format(now);
  }

}