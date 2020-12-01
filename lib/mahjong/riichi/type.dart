enum RiichiResultType {
  sevenPairs,
  regular,
  invalid,
}

enum RiichiYakuType {
  // Spacial
  riichi, // 1 立直
  sevenPairs, // 2 七对子
  nagashiMangan, // 流局满贯

  // Luck
  selfPick, // 1 门前清自摸和
  oneShot, // 1 一发
  lastTile, // 1 海底捞月
  lastDiscard, // 1 河底捞鱼
  deadWall, // 1 岭上开花
  robbingQuad, // 1 抢杠
  dora, // 1 宝牌
  redDora, // 1 红宝牌
  underDora, // 1 里宝牌
  doubleRiichi, // 2 双立直

  // Regular
  noPoints, // 1 平和
  oneSetIdentical, // 1 一杯口
  threeColourStraight, // 1 三色同顺
  tanyao, // 1 断幺
  yakuZhong, // 1 役牌-中
  yakuFa, // 1 役牌-发
  yakuBai, // 1 役牌-白
  yakuPrevailing, // 1 役牌-场风
  yakuPlayer, // 1 役牌-门风
  straight, // 2 一气通贯
  allTriplet, // 2 对对和
  threeClosedTriplets, // 2 三暗刻
  threeColourTriplets, // 2 三色同刻
  threeKans, // 2 三杠子
  terminalHonorEachSet, // 2,1 混全带幺九
  terminalAndHonors, // 2 混老头
  littleThreeDragons, // 2 小三元
  twoSetIdentical, // 3 两杯口
  terminalEachSet, // 3,2 纯全带幺九
  halfFlush, // 3,2 混一色
  flush, // 6,5 清一色

  // Yakuman
  thirteenOrphans, // 国士无双
  fourConcealedTriplets, // 四暗刻
  bigThreeDragons, // 大三元
  littleFourWinds, // 小四喜
  allHonors, // 字一色
  allTerminals, // 青老头
  allGreen, // 绿一色
  nineGates, // 九连宝灯

  // Double Yakuman
  thirteenOrphansThirteenWait, // 国士无双十三面
  fourConcealedTripletsSingleWait, // 四暗刻单骑
  bigFourWinds, // 大四喜
  nineGatesPure, // 纯正九连宝灯
}

Map<RiichiYakuType, int> riichiYakuFan = {
  // Spacial
  RiichiYakuType.riichi: 1,
  RiichiYakuType.sevenPairs: 2,

  // Luck
  RiichiYakuType.selfPick: 1,
  RiichiYakuType.oneShot: 1,
  RiichiYakuType.lastTile: 1,
  RiichiYakuType.lastDiscard: 1,
  RiichiYakuType.deadWall: 1,
  RiichiYakuType.robbingQuad: 1,
  RiichiYakuType.dora: 1,
  RiichiYakuType.redDora: 1,
  RiichiYakuType.underDora: 1,
  RiichiYakuType.doubleRiichi: 2,

  // Regular
  RiichiYakuType.noPoints: 1,
  RiichiYakuType.oneSetIdentical: 1,
  RiichiYakuType.threeColourStraight: 1,
  RiichiYakuType.tanyao: 1,
  RiichiYakuType.yakuZhong: 1,
  RiichiYakuType.yakuFa: 1,
  RiichiYakuType.yakuBai: 1,
  RiichiYakuType.yakuPrevailing: 1,
  RiichiYakuType.yakuPlayer: 1,
  RiichiYakuType.straight: 2,
  RiichiYakuType.allTriplet: 2,
  RiichiYakuType.threeClosedTriplets: 2,
  RiichiYakuType.threeColourTriplets: 2,
  RiichiYakuType.threeKans: 2,
  RiichiYakuType.terminalHonorEachSet: 2,
  RiichiYakuType.terminalAndHonors: 2,
  RiichiYakuType.littleThreeDragons: 2,
  RiichiYakuType.twoSetIdentical: 3,
  RiichiYakuType.terminalEachSet: 3,
  RiichiYakuType.halfFlush: 3,
  RiichiYakuType.flush: 6,
};
