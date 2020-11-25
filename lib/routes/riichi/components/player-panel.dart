import 'package:flutter/material.dart';
import 'package:tanyao/entity/player.dart';
import 'package:tanyao/i18n/core/localizations.dart';

class PlayerPanelView extends StatelessWidget {
  final PlayerEntity player;

  PlayerPanelView({
    @required this.player,
  });

  @override
  Widget build(BuildContext context) {
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    return Card(
      child: SizedBox(
        width: 150,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              leading: ClipOval(
                child: Material(
                  color: Theme.of(context).primaryColor,
                  child: InkWell(
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: Center(
                        child: coreLocalizations.getText(
                          "he-win",
                          style: TextStyle(
                            color: Theme.of(context).cardColor,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (BuildContext context) {
                          return RotatedBox(
                            quarterTurns: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  height: 100,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.purple,
                                  child: new Column(
                                    children: <Widget>[
                                      new Text(
                                        'custom dialog text',
                                        style: new TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              title: Text(this.player.name),
            ),
          ],
        ),
      ),
    );
  }
}
