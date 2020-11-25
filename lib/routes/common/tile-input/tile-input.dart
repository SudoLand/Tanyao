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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: MahjongTile.getAvailableDots()
              .map(
                (MahjongTile tile) => TileButtonView(
                  tile,
                  onPressed: (MahjongTile tile) {},
                ),
              )
              .toList(),
        )
      ],
    );
  }
}
