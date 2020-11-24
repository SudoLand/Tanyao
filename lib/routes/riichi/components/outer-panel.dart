import 'package:flutter/material.dart';
import 'package:tanyao/i18n/core/localizations.dart';
import 'package:tanyao/routes/riichi/components/center-panel.dart';

class RiichiOuterPanelView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    return Stack(
      children: [
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              child: coreLocalizations.getText("Hello"),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.centerLeft,
            child: RotatedBox(
              quarterTurns: 1,
              child: Card(
                child: coreLocalizations.getText("Hello"),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.topCenter,
            child: RotatedBox(
              quarterTurns: 2,
              child: Card(
                child: coreLocalizations.getText("Hello"),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.centerRight,
            child: RotatedBox(
              quarterTurns: 3,
              child: Card(
                child: coreLocalizations.getText("Hello"),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: RiichiCenterPanelView(),
          ),
        ),
      ],
    );
  }
}
