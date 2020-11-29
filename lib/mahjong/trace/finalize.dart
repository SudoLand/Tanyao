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

    for (MahjongTracePossibleResult eachResult in iteratedResults) {
      if (eachResult.finalized) {
        finalizedResults.add(eachResult);
      } else {
        possibleResults.add(eachResult);
      }
    }
  }

  return finalizedResults;
}
