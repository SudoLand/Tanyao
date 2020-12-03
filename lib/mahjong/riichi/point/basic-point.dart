import 'dart:math';

import 'package:tanyao/mahjong/riichi/point/result.dart';
import 'package:tanyao/mahjong/riichi/point/type.dart';

RiichiPointResult analysisRiichiPoint(int fan, int fu) {
  if (fan >= 13) {
    return RiichiPointResult(
      RiichiPointType.kazoeYakuman,
      8000,
    );
  }

  if (fan >= 11) {
    return RiichiPointResult(
      RiichiPointType.sanbeiman,
      6000,
    );
  }

  if (fan >= 8) {
    return RiichiPointResult(
      RiichiPointType.beiman,
      4000,
    );
  }

  if (fan >= 6) {
    return RiichiPointResult(
      RiichiPointType.haneman,
      3000,
    );
  }

  final int basicPoint = fu * pow(2, fan + 2);

  if (basicPoint >= 2000 || fan == 5) {
    return RiichiPointResult(
      RiichiPointType.mangan,
      2000,
    );
  }

  return RiichiPointResult(
    RiichiPointType.regular,
    basicPoint,
  );
}
