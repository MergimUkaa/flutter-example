import 'package:flutter/material.dart';
import './text_output.dart';
class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextControl();
  }
}


class _TextControl extends State<TextControl> {
  String _mainText = "This is the firt assignment";
  bool _isMainText = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("First Assignment"),
          ),
          body:
          Column(
            children: [
              RaisedButton(
                color: _mainText == "This is the firt assignment" ? Colors.amber : Colors.cyan,
                onPressed: () {
                  setState(() {
                    if (_isMainText){
                      _mainText = "This is the firt assignment";
                      _isMainText = !_isMainText;
                    } else {
                      _mainText = "Text Changed";
                      _isMainText = !_isMainText;
                    }

                  });
                },
                child: Text("Change Text"),
              ),
              TextOutput(_mainText)
            ]
            ,
          ),
        )
    );
  }
}