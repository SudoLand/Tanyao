import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/tile.dart';
import 'package:tanyao/mahjong/trace/find.dart';

class MahjongTracePossibleResult {
  final MahjongHand hand;
  final List<MahjongSet> mahjongSets;

  bool finalized = false;

  MahjongTracePossibleResult(this.hand, this.mahjongSets);

  bool isGoodFinalized() {
    return this.finalized && this.hand.getTotalTileCount() == 0;
  }

  void sort() {
    this.mahjongSets.sort();
  }

  List<MahjongTracePossibleResult> findNext() {
    final MahjongHand cloneHand = this.hand.clone();
    final List<MahjongTracePossibleResult> nextResults = [];

    loop:
    for (MahjongTile tile in MahjongTile.getAllAvailableTiles()) {
      final List<MahjongSet> combos = findMahjongFirstAvailableCombos(
        cloneHand,
        tile,
      );

      for (MahjongSet combo in combos) {
        final MahjongTracePossibleResult cloned = this.removeAndAddClone(combo);
        cloned.sort();

        nextResults.add(cloned);
      }

      if (combos.isNotEmpty) {
        break loop;
      }
    }

    if (nextResults.isEmpty) {
      this.finalized = true;
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

  String toString() {
    final String setString = this
        .mahjongSets
        .map((MahjongSet currentSet) => "[${currentSet.toString()}]")
        .join(',');

    final String handString = this.hand.toString();

    if (handString.isEmpty) {
      return setString;
    }

    return "$setString($handString)";
  }
}
