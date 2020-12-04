import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:tanyao/components/riichi/finalize-list.dart';
import 'package:tanyao/components/tile/tile-hand.dart';
import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/tile.dart';

class RiichiMahjongHandInputView extends StatefulWidget {
  @override
  _RiichiMahjongHandInputViewState createState() =>
      _RiichiMahjongHandInputViewState();
}

class _RiichiMahjongHandInputViewState
    extends State<RiichiMahjongHandInputView> {
  MahjongHand _hand = MahjongHand();

  @override
  Widget build(BuildContext context) {
    final List<Widget> finalizeList = buildRiichiMahjongFinalizeList(
      this._hand,
      onHandUpdate: (MahjongHand newHand) {
        this.setState(
          () {
            this._hand = newHand;
          },
        );
      },
    );

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
              loop: false,
              itemCount: finalizeList.length,
              itemBuilder: (BuildContext context, int index) {
                if (finalizeList[index] is Widget) {
                  return finalizeList[index];
                }
                return Container();
              },
              pagination: SwiperPagination(
                builder: DotSwiperPaginationBuilder(
                  color: Theme.of(context).buttonColor,
                  activeColor: Theme.of(context).accentColor,
                ),
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
