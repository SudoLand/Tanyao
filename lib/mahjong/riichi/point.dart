import 'dart:math';

int calculateRiichiBasicPoint(int fan, int fu) {
  return fu * pow(2, fan + 2);
}

int calculateRiichiPoint(int fan, int fu) {
  return 0;
}
