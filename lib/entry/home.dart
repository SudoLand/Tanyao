import 'package:flutter/material.dart';
import 'package:tanyao/i18n/core/localizations.dart';

class TanyaoHome extends StatefulWidget {
  static const String route = '/home';

  @override
  _TanyaoHomeState createState() => _TanyaoHomeState();
}

class _TanyaoHomeState extends State<TanyaoHome> {
  @override
  Widget build(BuildContext context) {
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: coreLocalizations.getText("TANYAO"),
      ),
    );
  }
}
