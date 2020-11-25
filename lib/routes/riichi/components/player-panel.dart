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
                      showGeneralDialog(
                        context: context,
                        barrierDismissible: true,
                        transitionBuilder: (
                          BuildContext context,
                          Animation<double> x,
                          Animation<double> y,
                          Widget widget,
                        ) {
                          final double curvedValue =
                              Curves.easeInOutBack.transform(x.value) - 1.0;

                          return RotatedBox(
                            quarterTurns: 1,
                            child: Transform(
                              transform: Matrix4.translationValues(
                                0.0,
                                curvedValue * 200,
                                0.0,
                              ),
                              child: Opacity(
                                opacity: x.value,
                                child: Card(
                                  child: Container(
                                    height: 100,
                                    color: Colors.purple,
                                    child: Container(),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        barrierLabel: '',
                        transitionDuration: Duration(milliseconds: 200),
                        pageBuilder: (context, animation1, animation2) {
                          return null;
                        },
                      );
                      // builder: (BuildContext context) {
                      //   return RotatedBox(
                      //     quarterTurns: 1,
                      // child: ,
                      //   );
                      // },
                      // );
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
