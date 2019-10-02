import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myday/styles/styles.dart';

import '../routes.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _pickColorButtonText = 'Pick Color';
  String _playOxoButtonText = 'Play OXO';
  MaterialColor _currentColor;

  void _showColorScreen() {
    Navigator.pushNamed(context, Routes.detail).then((color) {
      _updateColor(color);
    });
  }

  void _showOxoScreen() {
    Navigator.pushNamed(context, Routes.oxo);
  }

  void _updateColor(MaterialColor color) {
    setState(() {
      _currentColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Home'),
          elevation: defaultTargetPlatform == TargetPlatform.iOS ? 0.0 : 4.0),
      body: Column(
        children: <Widget>[
          Image(
            image: AssetImage('assets/images/background.jpeg', bundle: null),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Center(
              child: defaultTargetPlatform == TargetPlatform.iOS
                  ? CupertinoButton(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(4.0),
                      child: Text(_pickColorButtonText),
                      onPressed: () {
                        _showColorScreen();
                      },
                    )
                  : MaterialButton(
                      child: Text(_pickColorButtonText),
                      color: Colors.amberAccent,
                      onPressed: () {
                        _showColorScreen();
                      },
                    ),
            ),
          ),
          Container(
            child: Center(
              child: defaultTargetPlatform == TargetPlatform.iOS
                  ? CupertinoButton(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(4.0),
                      child: Text(_playOxoButtonText),
                      onPressed: () {
                        _showOxoScreen();
                      },
                    )
                  : MaterialButton(
                      child: Text(_playOxoButtonText),
                      color: Colors.amberAccent,
                      onPressed: () {
                        _showOxoScreen();
                      },
                    ),
            ),
          ),
          Container(
            child: Center(
              child: Container(
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(10.0),
                color: _currentColor,
                child: Text(
                  'Your chosen color',
                  style: blackTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
