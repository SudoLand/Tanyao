import 'package:flutter/material.dart';
import 'package:tanyao/routes/riichi/components/outer-panel.dart';

class RiichiGameView extends StatefulWidget {
  @override
  _RiichiGameViewState createState() => _RiichiGameViewState();
}

class _RiichiGameViewState extends State<RiichiGameView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RiichiOuterPanelView(),
    );
  }
}
