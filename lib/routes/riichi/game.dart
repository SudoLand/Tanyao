import 'package:flutter/material.dart';
import 'package:tanyao/entity/player.dart';
import 'package:tanyao/routes/riichi/components/outer-panel.dart';
import 'package:tanyao/routes/riichi/riichi/game-four.dart';

class RiichiGameView extends StatefulWidget {
  @override
  _RiichiGameViewState createState() => _RiichiGameViewState();
}

class _RiichiGameViewState extends State<RiichiGameView> {
  final RiichiGameFour _game = RiichiGameFour(
    player1: PlayerEntity(name: "Mario"),
    player2: PlayerEntity(name: "Luigi"),
    player3: PlayerEntity(name: "Link"),
    player4: PlayerEntity(name: "Zelda"),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RiichiOuterPanelView(
        game: this._game,
      ),
    );
  }
}
