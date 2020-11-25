import 'package:flutter/material.dart';
import 'package:tanyao/entity/mahjong.dart';

class TileButtonView extends StatelessWidget {
  final MahjongType type;
  final int value;

  TileButtonView({
    @required this.type,
    @required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text('1p'),
      color: Theme.of(context).buttonColor,
      minWidth: 0,
      onPressed: () {},
    );
  }
}
