import 'package:flutter/material.dart';
import 'package:tanyao/routes/riichi/components/outer-panel.dart';
import 'package:tanyao/routes/riichi/riichi/game.dart';

class RiichiGameView extends StatefulWidget {
  @override
  _RiichiGameViewState createState() => _RiichiGameViewState();
}

class _RiichiGameViewState extends State<RiichiGameView> {
  final RiichiGame _game = RiichiGame();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RiichiOuterPanelView(
        game: this._game,
      ),
    );
  }
}
