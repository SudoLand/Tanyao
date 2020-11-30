import 'package:flutter_test/flutter_test.dart';
import 'package:tanyao/util/parse.dart';

void main() {
  test('can parse integer - happy path', () {
    final int result = tryParseInt('10');
    expect(result, equals(10));
  });

  test('can parse integer - sad path', () {
    final int result = tryParseInt('hello');
    expect(result, equals(null));
  });
}
