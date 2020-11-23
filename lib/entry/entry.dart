import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tanyao/entry/home.dart';
import 'package:tanyao/i18n/core/localizations.dart';

class TanyaoEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        CoreLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('zh'),
      ],
      title: 'Tanyao',
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      routes: {
        TanyaoHome.route: (context) => TanyaoHome(),
      },
      initialRoute: TanyaoHome.route,
    );
  }
}
