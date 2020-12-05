import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/trace/possible.dart';

List<MahjongTracePossibleResult> finalizeMahjongPossibleResults(
  MahjongHand hand,
) {
  final List<MahjongTracePossibleResult> finalizedResults = [];
  final List<MahjongTracePossibleResult> possibleResults = [
    MahjongTracePossibleResult(hand, []),
  ];

  while (possibleResults.isNotEmpty) {
    final MahjongTracePossibleResult firstResult = possibleResults.first;
    possibleResults.removeAt(0);

    final List<MahjongTracePossibleResult> iteratedResults =
        firstResult.findNext();

    if (firstResult.isGoodFinalized()) {
      finalizedResults.add(firstResult);
    }

    for (MahjongTracePossibleResult eachResult in iteratedResults) {
      possibleResults.add(eachResult);
    }
  }

  final List<MahjongTracePossibleResult> reducedFinalizedResults = [];

  outer:
  for (MahjongTracePossibleResult each in finalizedResults) {
    for (MahjongTracePossibleResult reducedEach in reducedFinalizedResults) {
      if (each.toString() == reducedEach.toString()) {
        continue outer;
      }
    }
    reducedFinalizedResults.add(each);
  }

  return reducedFinalizedResults;
}
