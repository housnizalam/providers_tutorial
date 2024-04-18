import 'package:flutter/material.dart';
import 'package:providers_tutorial/homs/home_changenotifier/home1_provider_change_notifier.dart';
import 'package:providers_tutorial/homs/homeProvider/home_provider.dart';
import 'package:providers_tutorial/homs/home_multiproviders/home_multyproviders.dart';
import 'package:providers_tutorial/homs/home_stream_builder/home_stream_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePageChangeNotifier(),
    );
  }
}
