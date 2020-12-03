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

  test('calculate dealer self pick', () {
    final RiichiPointResult result = RiichiPointResult(
      RiichiPointType.regular,
      800,
    );

    expect(result.calculateDealerSelfPickReceive(), 1600);
  });

  test('calculate dealer discard', () {
    final RiichiPointResult result = RiichiPointResult(
      RiichiPointType.regular,
      800,
    );

    expect(result.calculateDealerDiscardReceive(), 4800);
  });

  test('calculate non-dealer self pick', () {
    final RiichiPointResult result = RiichiPointResult(
      RiichiPointType.regular,
      800,
    );

    expect(result.calculateNonDealerSelfPickDealerReceive(), 1600);
    expect(result.calculateNonDealerSelfPickOtherReceive(), 800);
  });

  test('calculate non-dealer discard', () {
    final RiichiPointResult result = RiichiPointResult(
      RiichiPointType.regular,
      800,
    );

    expect(result.calculateNonDealerDiscardReceive(), 3200);
  });
}
