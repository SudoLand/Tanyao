import 'package:tanyao/mahjong/riichi/point/type.dart';

class RiichiPointResult {
  final RiichiPointType type;
  final int basicPoint;

  RiichiPointResult(this.type, this.basicPoint);

  bool operator ==(dynamic other) {
    if (!(other is RiichiPointResult)) {
      return false;
    }

    return this.hashCode == other.hashCode;
  }

  /// Amount of every other player pay
  int calculateDealerSelfPickReceive() {
    return this._polyfillReceive(this.basicPoint * 2);
  }

  /// Amount of the tile discard player pays
  int calculateDealerDiscardReceive() {
    return this._polyfillReceive(this.basicPoint * 6);
  }

  @override
  int get hashCode {
    return (this.type.index * 10000) + this.basicPoint;
  }

  int _polyfillReceive(int value) {
    final int rest = value % 100;
    if (rest == 0) {
      return value;
    }

    return value - rest + 100;
  }
}
