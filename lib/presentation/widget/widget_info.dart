import 'package:flutter/material.dart';

class WidgetInfo extends StatelessWidget {
  final String titolo;
  final String corpo;

  const WidgetInfo({super.key, required this.titolo, required this.corpo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Text(
            titolo,
            style: Theme.of(context).textTheme.headline1,
            textAlign: TextAlign.left,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            corpo,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        )
      ],
    );
  }
}