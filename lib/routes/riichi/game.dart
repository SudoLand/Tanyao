import 'package:flutter/material.dart';
import 'package:tanyao/i18n/core/localizations.dart';

class RiichiGameView extends StatefulWidget {
  @override
  _RiichiGameViewState createState() => _RiichiGameViewState();
}

class _RiichiGameViewState extends State<RiichiGameView> {
  @override
  Widget build(BuildContext context) {
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    return Scaffold(
      body: Stack(
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
              child: Container(
                width: 150,
                height: 150,
                child: Card(
                  child: Stack(
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
                          child: ClipOval(
                            child: Material(
                              child: InkWell(
                                child: SizedBox(
                                  width: 56,
                                  height: 56,
                                  child: Icon(Icons.menu),
                                ),
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
