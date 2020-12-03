import 'package:flutter_test/flutter_test.dart';
import 'package:tanyao/mahjong/riichi/point/result.dart';
import 'package:tanyao/mahjong/riichi/point/type.dart';

void main() {
  test('result should be able to generate', () {
    final RiichiPointResult result = RiichiPointResult(
      RiichiPointType.regular,
      500,
    );

    expect(
      result,
      equals(
        RiichiPointResult(
          RiichiPointType.regular,
          500,
        ),
      ),
    );
  });
}
