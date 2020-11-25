import 'package:flutter/material.dart';
import 'package:tanyao/routes/riichi/components/center-panel.dart';
import 'package:tanyao/routes/riichi/components/player-panel.dart';
import 'package:tanyao/routes/riichi/riichi/game-four.dart';

class RiichiOuterPanelView extends StatelessWidget {
  final RiichiGameFour game;

  RiichiOuterPanelView({
    @required this.game,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: PlayerPanelView(
              player: this.game.player1,
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.centerLeft,
            child: RotatedBox(
              quarterTurns: 1,
              child: PlayerPanelView(
                player: this.game.player2,
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.topCenter,
            child: RotatedBox(
              quarterTurns: 2,
              child: PlayerPanelView(
                player: this.game.player3,
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.centerRight,
            child: RotatedBox(
              quarterTurns: 3,
              child: PlayerPanelView(
                player: this.game.player4,
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: RiichiCenterPanelView(),
          ),
        ),
      ],
    );
  }
}
