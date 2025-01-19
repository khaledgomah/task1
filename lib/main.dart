import 'package:flutter/material.dart';
import 'package:task1/app/my_app.dart';
import 'package:task1/presentation/base/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  locatorSetup();
  runApp(const MyApp());
}
