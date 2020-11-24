import 'package:flutter/material.dart';
import 'package:tanyao/i18n/core/localizations.dart';
import 'package:tanyao/routes/gather/gather.dart';
import 'package:tanyao/routes/history/history.dart';
import 'package:tanyao/routes/tools/tools.dart';

class TanyaoHome extends StatefulWidget {
  static const String route = '/home';

  @override
  _TanyaoHomeState createState() => _TanyaoHomeState();
}

class _TanyaoHomeState extends State<TanyaoHome> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: coreLocalizations.getText("tanyao"),
      ),
      body: this._buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: coreLocalizations.getString('history'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: coreLocalizations.getString('gather'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.brightness_2),
            label: coreLocalizations.getString('tools'),
          ),
        ],
        currentIndex: this._selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildBody() {
    switch (this._selectedIndex) {
      case 0:
        return HistoryView();
      case 1:
        return GatherView();
      case 2:
        return ToolsView();
    }

    return Container();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
