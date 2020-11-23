import 'package:flutter/material.dart';
import 'package:tanyao/entry/home.dart';

class TanyaoEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('zh'),
      ],
      title: 'Seafood Crossing',
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      routes: {
        TanyaoHome.route: (context) => TanyaoHome(),
      },
      initialRoute: TanyaoHome.route,
    );
  }
}
