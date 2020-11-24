import 'package:flutter/material.dart';
import 'package:tanyao/routes/gather/components/start-game-card.dart';

class GatherView extends StatelessWidget {
  GatherView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          GatherStartGameCardView(
            icon: Icon(Icons.album),
            gameName: "riichi-mahjong",
          ),
          GatherStartGameCardView(
            icon: Icon(Icons.album),
            gameName: "competition-mahjong",
          ),
        ],
      ),
    );
  }
}
