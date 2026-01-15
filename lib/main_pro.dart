import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_flavor_application/app.dart';
import 'package:flutter_flavor_application/app_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppConfig.setup(flavor: "pro");
  log("====================================${AppConfig.baseUrl}");
  runApp(FlutterFlavorsApp(flavor: "Pro"));
}
