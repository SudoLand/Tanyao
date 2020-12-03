import 'package:flutter_test/flutter_test.dart';
import 'package:tanyao/mahjong/riichi/point/basic-point.dart';

void main() {
  test('calculate basic point', () {
    final int basicPoint = calculateRiichiRegularBasicPoint(2, 40);

    expect(basicPoint, equals(640));
  });
}
