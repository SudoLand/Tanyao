import 'package:tanyao/mahjong/riichi/type.dart';

int getRegularRiichiYakuFan(
  RiichiYakuType yakuType, {
  bool clearGate = true,
}) {
  final int yakuFan = riichiYakuFan[yakuType];

  if (!(yakuFan is int)) {
    return 0;
  }

  if (clearGate) {
    return yakuFan;
  }

  if (yakuType == RiichiYakuType.terminalHonorEachSet ||
      yakuType == RiichiYakuType.terminalEachSet ||
      yakuType == RiichiYakuType.halfFlush ||
      yakuType == RiichiYakuType.flush) {
    return yakuFan - 1;
  }

  return yakuFan;
}

int calculateRegularRiichiYakuFan(
  List<RiichiYakuType> yakuTypes, {
  bool clearGate = true,
}) {
  int yakuFan = 0;

  for (RiichiYakuType yakuType in yakuTypes) {
    final int currentYakuFan = getRegularRiichiYakuFan(
      yakuType,
      clearGate: clearGate,
    );

    yakuFan += currentYakuFan;
  }

  return yakuFan;
}
