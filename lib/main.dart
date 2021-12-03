import 'package:flutter/material.dart';
import 'package:google_translate/home.dart';
import 'package:provider/provider.dart';
import 'package:translator/translator.dart';
import 'model/translator_model.dart';

void main()
{
  runApp(
    MaterialApp(
      home: MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TranslatorModel(),
        child: Home());
  }
}

