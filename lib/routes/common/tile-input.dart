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
            RaisedButton(
              child: Text("1p"),
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }
}
