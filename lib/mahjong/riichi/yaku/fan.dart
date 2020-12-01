import 'package:tanyao/mahjong/riichi/type.dart';

int getRegularRiichiYakuFan(RiichiYakuType yakuType) {
  final int yakuFan = riichiYakuFan[yakuType];

  if (yakuFan is int) {
    return yakuFan;
  }

  return 0;
}

int calculateRiichiYakuFan(List<RiichiYakuType> yakuTypes) {
  return 0;
}
