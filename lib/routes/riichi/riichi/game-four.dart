import 'package:flutter/cupertino.dart';
import 'package:tanyao/entity/player.dart';

class RiichiGameFour {
  final PlayerEntity player1;
  final PlayerEntity player2;
  final PlayerEntity player3;
  final PlayerEntity player4;

  int dealer;

  RiichiGameFour({
    @required this.player1,
    @required this.player2,
    @required this.player3,
    @required this.player4,
    int initialDealer,
  }) {
    if (initialDealer is int) {
      this.dealer = initialDealer;
    } else {
      this.dealer = 1;
    }
  }
}
