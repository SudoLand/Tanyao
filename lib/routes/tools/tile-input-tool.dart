import 'package:flutter/material.dart';
import 'package:tanyao/i18n/core/localizations.dart';
import 'package:tanyao/routes/common/tile-input/tile-input.dart';

class TileInputToolView extends StatefulWidget {
  @override
  _TileInputToolViewState createState() => _TileInputToolViewState();
}

class _TileInputToolViewState extends State<TileInputToolView> {
  @override
  Widget build(BuildContext context) {
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: coreLocalizations.getText("tile-input-tool"),
      ),
      body: Card(
        margin: const EdgeInsets.all(10.0),
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: TileInputView(),
        ),
      ),
    );
  }
}
