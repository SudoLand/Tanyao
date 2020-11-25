import 'package:flutter/material.dart';

class TileInputView extends StatefulWidget {
  @override
  _TileInputViewState createState() => _TileInputViewState();
}

class _TileInputViewState extends State<TileInputView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            MaterialButton(
              child: Text('1p'),
              color: Theme.of(context).buttonColor,
              minWidth: 0,
              onPressed: () {},
            ),
            MaterialButton(
              child: Text('2p'),
              color: Theme.of(context).buttonColor,
              minWidth: 0,
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }
}
