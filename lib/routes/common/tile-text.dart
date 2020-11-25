import 'package:flutter/material.dart';
import 'package:tanyao/entity/mahjong.dart';
import 'package:tanyao/i18n/core/localizations.dart';

class TileTextView extends StatelessWidget {
  final MahjongTile tile;

  TileTextView(this.tile);

  @override
  Widget build(BuildContext context) {
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    switch (this.tile.type) {
      case MahjongType.bamboo:
        return Text("${this.tile.value}s");
      case MahjongType.character:
        return Text("${this.tile.value}m");
      case MahjongType.dot:
        return Text("${this.tile.value}p");
      case MahjongType.dragon:
        switch (this.tile.value) {
          case 1:
            return Text(coreLocalizations.getString("zhong"));
          case 2:
            return Text(coreLocalizations.getString("fa"));
          case 3:
            return Text(coreLocalizations.getString("bai"));
        }
        return Text(coreLocalizations.getString("unknown"));
      case MahjongType.wind:
        switch (this.tile.value) {
          case 1:
            return Text(coreLocalizations.getString("east"));
          case 2:
            return Text(coreLocalizations.getString("south"));
          case 3:
            return Text(coreLocalizations.getString("west"));
          case 4:
            return Text(coreLocalizations.getString("north"));
        }
        return Text(coreLocalizations.getString("unknown"));
      case MahjongType.flower:
        return Text(coreLocalizations.getString("flower"));
    }
    return Text(coreLocalizations.getString("unknown"));
  }
}
