import 'package:flutter/material.dart';

void showSideDialog(
  BuildContext context, {
  @required int quarterTurns,
  @required Widget child,
}) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    transitionBuilder: (
      BuildContext context,
      Animation<double> x,
      Animation<double> y,
      Widget widget,
    ) {
      final double curvedValue = Curves.easeInOutBack.transform(x.value) - 1.0;

      return RotatedBox(
        quarterTurns: quarterTurns,
        child: Transform(
          transform: Matrix4.translationValues(
            0.0,
            curvedValue * 200,
            0.0,
          ),
          child: Opacity(
            opacity: x.value,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Card(
                      child: RotatedBox(
                        quarterTurns: 2,
                        child: Container(
                          padding: const EdgeInsets.all(5.0),
                          width: 400,
                          height: 170,
                          child: child,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
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
}
