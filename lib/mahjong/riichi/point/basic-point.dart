import 'dart:math';

int calculateRiichiRegularBasicPoint(int fan, int fu) {
  if (fan >= 11) {
    return 6000;
  }

  if (fan >= 8) {
    return 4000;
  }

  if (fan >= 6) {
    return 3000;
  }

  final int basicPoint = fu * pow(2, fan + 2);

  if (basicPoint >= 2000) {
    return 2000;
  }

  if (fan == 5) {
    return 2000;
  }

  return basicPoint;
}
