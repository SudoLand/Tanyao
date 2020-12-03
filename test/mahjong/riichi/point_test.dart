import 'package:flutter_test/flutter_test.dart';
import 'package:tanyao/mahjong/riichi/point.dart';

void main() {
  test('calculate basic point', () {
    final int basicPoint = calculateRiichiBasicPoint(2, 40);

    expect(basicPoint, equals(640));
  });
}
