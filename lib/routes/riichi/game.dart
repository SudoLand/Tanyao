import 'package:flutter/material.dart';
import 'package:tanyao/i18n/core/localizations.dart';

class RiichiGameView extends StatefulWidget {
  @override
  _RiichiGameViewState createState() => _RiichiGameViewState();
}

class _RiichiGameViewState extends State<RiichiGameView> {
  @override
  Widget build(BuildContext context) {
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    return Scaffold(
      body: Column(
        children: [
          coreLocalizations.getText("Hello"),
        ],
      ),
    );
  }
}
