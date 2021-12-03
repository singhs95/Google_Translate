import 'package:flutter/material.dart';
import 'package:google_translate/model/language.dart';

class TranslatorModel extends ChangeNotifier {
  final languageList = [
    Language('nb', 'Norsk'),
    Language('sv', 'Svensk'),
    Language('dk', 'Dansk'),
    Language('pl', 'Polsk'),
    Language('th', 'Thai'),
    Language('de', 'Tysk'),
  ];

  Language? selectedFromLanguage;
  Language? selectedToLanguage;

  String currentInput = "";
  String currentOutput = "";

  List<String> recentTranslationQueries = [];

  void setNewInput(String newValue) {
    currentInput = newValue;
    notifyListeners();
  }

  void setNewOutput(String newValue) {
    currentOutput = newValue;
    notifyListeners();
  }

  void setSelectedFromLanguage(String countryCode) {
    selectedFromLanguage =
        languageList.firstWhere((e) => e.countryCode == countryCode);
    notifyListeners();
  }

  void setSelectedToLanguage(String countryCode) {
    selectedToLanguage =
        languageList.firstWhere((e) => e.countryCode == countryCode);
    notifyListeners();
  }
}
