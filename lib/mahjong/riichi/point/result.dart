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

  @override
  int get hashCode {
    return (this.type.index * 10000) + this.basicPoint;
  }
}
