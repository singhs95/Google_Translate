import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'translator_model.dart';

class DropDownList extends StatelessWidget {
  const DropDownList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentFromLanguage = Provider.of<TranslatorModel>(context).selectedFromLanguage;
    final currentToLanguage = Provider.of<TranslatorModel>(context).selectedToLanguage;


    return
      Row(
      children: [
        DropdownButton(items: provideMenyItems(context),
          iconSize: 67,
          elevation: 16,
          underline: Container(
            color: Colors.blueAccent,
            height: 2,
          ),
          hint: currentFromLanguage == null ? Text('Select language') : Text(currentFromLanguage.name),
          onChanged: (value) {
            Provider.of<TranslatorModel>(context, listen: false).setSelectedFromLanguage(value as String);
          },),

        DropdownButton(items: provideMenyItems(context),
          iconSize: 67,
          elevation: 16,
          underline: Container(
            color: Colors.blueAccent,
            height: 2,
          ),
          hint: currentToLanguage == null ? Text('Select language') : Text(currentToLanguage.name),
          onChanged: (value) {
            Provider.of<TranslatorModel>(context, listen: false).setSelectedToLanguage(value as String);
          },),
      ],
    );
  }

  List<DropdownMenuItem<String>> provideMenyItems(BuildContext context) {
    final availableLanguages =
        Provider.of<TranslatorModel>(context).languageList;

    return availableLanguages
        .map((e) => DropdownMenuItem<String>(
      value: e.countryCode,
      child: Text(e.name),
    ))
        .toList();
  }
}
