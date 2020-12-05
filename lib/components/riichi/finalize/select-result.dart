import 'package:flutter/material.dart';
import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/riichi/identify.dart';
import 'package:tanyao/mahjong/riichi/type.dart';
import 'package:tanyao/mahjong/trace/finalize.dart';
import 'package:tanyao/mahjong/trace/possible.dart';

class MahjongRiichiSelectResultFinalizeView extends StatelessWidget {
  final MahjongHand hand;

  MahjongRiichiSelectResultFinalizeView({
    @required this.hand,
  });

  @override
  Widget build(BuildContext context) {
    final List<MahjongTracePossibleResult> result =
        this.analysisFinalizeValidPossibleResult();

    return ListView.builder(
      itemCount: result.length,
      itemBuilder: (BuildContext context, int index) {
        return Text(index.toString());
      },
    );
  }

  List<MahjongTracePossibleResult> analysisFinalizeValidPossibleResult() {
    final List<MahjongTracePossibleResult> result =
        finalizeMahjongPossibleResults(this.hand);

    final List<MahjongTracePossibleResult> identifiedResult = [];

    for (MahjongTracePossibleResult each in result) {
      if (identifyRiichiMahjongSets(each.mahjongSets) !=
          RiichiResultType.invalid) {
        identifiedResult.add(each);
      }
    }

    return identifiedResult;
  }
}
