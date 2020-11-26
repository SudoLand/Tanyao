import 'package:flutter/material.dart';
import 'package:tanyao/entity/mahjong/tile.dart';
import 'package:tanyao/entity/mahjong/type.dart';
import 'package:tanyao/i18n/core/localizations.dart';

class TileTextView extends StatelessWidget {
  final MahjongTile tile;

  TileTextView(this.tile);

  @override
  Widget build(BuildContext context) {
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    switch (this.tile.type) {
      case MahjongType.bamboo:
      case MahjongType.character:
      case MahjongType.dot:
        return Text(this.tile.toString());
      case MahjongType.dragon:
      case MahjongType.wind:
      case MahjongType.flower:
        return Text(coreLocalizations.getString(this.tile.toString()));
    }
    return Text(coreLocalizations.getString("unknown"));
  }
}
