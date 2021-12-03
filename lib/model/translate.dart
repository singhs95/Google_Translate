import 'package:flutter/material.dart';

class TranslateText extends StatelessWidget {
  const TranslateText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 86),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Start to  translate',
            ),
          ),
        ),
      ],
    );
  }
}
