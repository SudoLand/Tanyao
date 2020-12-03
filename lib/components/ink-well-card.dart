import 'package:flutter/material.dart';

class InkWellCardView extends StatelessWidget {
  final Icon icon;
  final Text title;
  final Text subtitle;
  final void Function() onPress;

  InkWellCardView({
    @required this.icon,
    @required this.title,
    @required this.subtitle,
    @required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: this.onPress,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: this.icon,
              title: this.title,
              subtitle: this.subtitle,
            ),
          ],
        ),
      ),
    );
  }
}
