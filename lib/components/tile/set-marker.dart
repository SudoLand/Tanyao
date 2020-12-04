import 'package:flutter/material.dart';
import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/trace/finalize.dart';
import 'package:tanyao/mahjong/trace/possible.dart';

class MahjongSetMarkerView extends StatelessWidget {
  final MahjongHand hand;

  MahjongSetMarkerView({
    @required this.hand,
  });

  @override
  Widget build(BuildContext context) {
    final List<MahjongTracePossibleResult> result =
        finalizeMahjongPossibleResults(this.hand);

    return Container(
      child: Column(
        children: result.map((MahjongTracePossibleResult result) {
          return Text(result.toString());
        }).toList(),
      ),
    );
  }
}
