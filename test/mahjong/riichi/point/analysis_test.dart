import 'package:flutter_test/flutter_test.dart';
import 'package:tanyao/mahjong/riichi/point/analysis.dart';
import 'package:tanyao/mahjong/riichi/point/result.dart';
import 'package:tanyao/mahjong/riichi/point/type.dart';

void main() {
  test('calculate regular basic point', () {
    final RiichiPointResult basicPoint = analysisRiichiPoint(2, 40);

    expect(
      basicPoint,
      equals(
        RiichiPointResult(
          RiichiPointType.regular,
          640,
        ),
      ),
    );
  });
}
