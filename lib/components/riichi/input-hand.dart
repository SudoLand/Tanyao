import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:tanyao/components/tile/set-marker.dart';
import 'package:tanyao/components/tile/tile-hand.dart';
import 'package:tanyao/components/tile/tile-input.dart';
import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/tile.dart';

class RiichiMahjongHandInputView extends StatefulWidget {
  @override
  _RiichiMahjongHandInputViewState createState() =>
      _RiichiMahjongHandInputViewState();
}

class _RiichiMahjongHandInputViewState
    extends State<RiichiMahjongHandInputView> {
  final MahjongHand _hand = MahjongHand();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
          ConstrainedBox(
            child: Swiper(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                switch (index) {
                  case 0:
                    {
                      return TileInputView(
                        onPressed: (MahjongTile tile) {
                          if (this._hand.getTotalTileCount() >= 17) {
                            return;
                          }
                          this._hand.addTile(tile);
                          this.setState(() {});
                        },
                      );
                    }
                  case 1:
                    {
                      return MahjongSetMarkerView(
                        hand: this._hand,
                      );
                    }
                }
                return Container();
              },
              pagination: SwiperPagination(
                margin: const EdgeInsets.all(5.0),
              ),
            ),
            constraints: BoxConstraints.loose(
              Size(
                MediaQuery.of(context).size.width,
                185.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
