import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/tile.dart';
import 'package:tanyao/mahjong/trace/find.dart';

class MahjongTracePossibleResult {
  final MahjongHand hand;
  final List<MahjongSet> mahjongSets;

  bool finalized;

  MahjongTracePossibleResult(this.hand, this.mahjongSets);

  List<MahjongTracePossibleResult> findNext() {
    final MahjongHand cloneHand = this.hand.clone();
    final List<MahjongTracePossibleResult> nextResults = [];

    for (MahjongTile tile in MahjongTile.getAllAvailableTiles()) {
      final List<MahjongSet> combos = findMahjongFirstAvailableCombos(
        cloneHand,
        tile,
      );

      for (MahjongSet combo in combos) {
        nextResults.add(this.removeAndAddClone(combo));
      }
    }

    if (nextResults.isEmpty) {
      finalized = true;
    }

    return nextResults;
  }

  MahjongTracePossibleResult removeAndAddClone(MahjongSet mahjongSet) {
    final MahjongTracePossibleResult nextResult = this.clone();

    nextResult.hand.removeSet(mahjongSet);
    nextResult.mahjongSets.add(mahjongSet);

    return nextResult;
  }

  MahjongTracePossibleResult clone() {
    final List<MahjongSet> newSet = [];
    newSet.addAll(this.mahjongSets);

    return MahjongTracePossibleResult(
      this.hand.clone(),
      newSet,
    );
  }
}
