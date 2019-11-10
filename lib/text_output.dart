import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
    final String _mainText;
    TextOutput(this._mainText) {}

    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(_mainText);
  }
}