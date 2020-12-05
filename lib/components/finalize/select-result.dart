import 'package:flutter/material.dart';
import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/trace/finalize.dart';
import 'package:tanyao/mahjong/trace/possible.dart';

class MahjongSelectResultFinalizeView extends StatelessWidget {
  final MahjongHand hand;

  MahjongSelectResultFinalizeView({
    @required this.hand,
  });

  @override
  Widget build(BuildContext context) {
    final List<MahjongTracePossibleResult> result =
        finalizeMahjongPossibleResults(this.hand);

    return ListView.builder(
      itemCount: result.length,
      itemBuilder: (BuildContext context, int index) {
        return Text(index.toString());
      },
    );
  }
}
