import 'package:flutter/material.dart';
import 'package:tanyao/components/riichi/input-hand-navigator/select-result.dart';
import 'package:tanyao/components/riichi/input-hand-navigator/tile-input.dart';
import 'package:tanyao/mahjong/hand.dart';

class RiichiMahjongHandInputNavigatorView extends StatefulWidget {
  @override
  _RiichiMahjongHandInputViewNavigatorState createState() =>
      _RiichiMahjongHandInputViewNavigatorState();
}

class _RiichiMahjongHandInputViewNavigatorState
    extends State<RiichiMahjongHandInputNavigatorView> {
  MahjongHand _hand = MahjongHand();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Navigator(
        initialRoute: 'riichi-input-hand-navigator/#/tile-input',
        onGenerateRoute: (RouteSettings settings) {
          WidgetBuilder builder;
          switch (settings.name) {
            case 'riichi-input-hand-navigator/#/tile-input':
              builder = (_) {
                return RiichiMahjongHandInputNavigatorTileInputView(
                  hand: this._hand,
                  onHandUpdate: (MahjongHand newHand) {
                    this.setState(() {
                      this._hand = newHand;
                    });
                  },
                );
              };
              break;
            case 'riichi-input-hand-navigator/#/select-result':
              builder = (_) {
                return RiichiMahjongHandInputNavigatorSelectResultView();
              };
              break;
            default:
              throw Exception('Invalid route: ${settings.name}');
          }
          return MaterialPageRoute(
            builder: builder,
            settings: settings,
          );
        },
      ),
    );
  }
}
