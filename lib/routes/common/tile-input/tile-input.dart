import 'package:flutter/material.dart';
import 'package:tanyao/entity/mahjong.dart';
import 'package:tanyao/routes/common/tile-input/tile-button.dart';

class TileInputView extends StatefulWidget {
  @override
  _TileInputViewState createState() => _TileInputViewState();
}

class _TileInputViewState extends State<TileInputView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: this.getMahjongList(MahjongTile.getAvailableDots()),
        ),
        SizedBox(
          height: 5.0,
        ),
        Row(
          children: this.getMahjongList(MahjongTile.getAvailableBamboos()),
        ),
        SizedBox(
          height: 5.0,
        ),
        Row(
          children: this.getMahjongList(MahjongTile.getAvailableCharacters()),
        ),
        SizedBox(
          height: 5.0,
        ),
        Row(
          children: this.getMahjongList(MahjongTile.getAvailableWinds()),
        ),
        SizedBox(
          height: 5.0,
        ),
        Row(
          children: this.getMahjongList(MahjongTile.getAvailableDragons()),
        ),
      ],
    );
  }

  List<Widget> getMahjongList(List<MahjongTile> tiles) {
    return tiles
        .map(
          (MahjongTile tile) => Expanded(
            child: TileButtonView(
              tile,
              onPressed: (MahjongTile tile) {},
            ),
          ),
        )
        .toList();
  }
}
