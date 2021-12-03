import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_translate/model/translator_model.dart';
import 'package:provider/provider.dart';
import 'package:translator/translator.dart';
import 'model/drop_down_list.dart';
import 'model/translate.dart';

class Home extends StatelessWidget {
  GoogleTranslator translator = GoogleTranslator();

  void translate(BuildContext context) {
    translator
        .translate(Provider.of<TranslatorModel>(context).currentInput, to: "no")
        .then((output) {
      Provider.of<TranslatorModel>(context, listen: false)
          .setNewOutput(output.text);
    });
    {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Translator"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            DropDownList(),
            TranslateText(),
            Text(Provider.of<TranslatorModel>(context).currentOutput),
            ElevatedButton(
              onPressed: () {
                translate(context);
              },
              child: Text("Translate the text"),
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                alignment: Alignment.bottomCenter,
              ),
            )
          ],
        ),
      ),
    );


  }
}
