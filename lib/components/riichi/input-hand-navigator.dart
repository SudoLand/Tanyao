import 'package:flutter/material.dart';
import 'package:tanyao/components/tile/tile-hand.dart';
import 'package:tanyao/components/tile/tile-input.dart';
import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/tile.dart';

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
              builder = (BuildContext innerContext) {
                return Column(
                  children: [
                    TileHandView(
                      this._hand,
                      onRemovePressed: (MahjongTile tile) {
                        this._hand.removeTile(tile);
                        this.setState(() {});
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TileInputView(
                      onPressed: (MahjongTile tile) {
                        if (this._hand.getTotalTileCount() >= 14) {
                          return;
                        }
                        this._hand.addTile(tile);
                        this.setState(() {});
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    RaisedButton(
                      child: Text("123"),
                      onPressed: () {
                        Navigator.of(innerContext).pushNamed(
                          'riichi-input-hand-navigator/#/select-result',
                        );
                      },
                    )
                  ],
                );
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
