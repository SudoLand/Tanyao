import 'package:flutter/material.dart';
import 'package:tanyao/routes/gather/components/start-game-card.dart';
import 'package:tanyao/routes/riichi/start-settings.dart';

class GatherView extends StatelessWidget {
  GatherView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          GatherStartGameCardView(
            onPress: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RiichiStartSettingsView(),
                ),
              );
            },
            icon: Icon(Icons.album),
            gameName: "riichi-mahjong",
          ),
          GatherStartGameCardView(
            onPress: () {},
            icon: Icon(Icons.album),
            gameName: "competition-mahjong",
          ),
        ],
      ),
    );
  }
}
