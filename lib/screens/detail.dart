import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myday/styles/styles.dart';

class PickColorScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PickColorScreenState();
}

class _PickColorScreenState extends State<PickColorScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _selectedColorVisibility = false;
  Color _currentColor;

  void _navigateBack() {
    Navigator.pop(context, _currentColor);
  }

  void _pickedColor(MaterialColor color) {
    setState(() {
      _currentColor = color;
      _selectedColorVisibility = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Detail"),
        leading: IconButton(
          icon: Icon(defaultTargetPlatform == TargetPlatform.iOS
              ? Icons.arrow_back_ios
              : Icons.arrow_back),
          onPressed: () {
            _navigateBack();
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.lightBlueAccent,
            margin: EdgeInsets.only(right: 8.0, left: 8.0, top: 8.0),
            child: Center(
              child: Container(
                margin: EdgeInsets.all(10.0),
                child: Text(
                  'Pick a color',
                  style: whiteTextStyle,
                ),
              ),
            ),
          ),
          Flexible(
            child: GridView.count(
              padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
              crossAxisCount: 2,
              children: <Widget>[
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      _pickedColor(Colors.brown);
                    },
                    child: Container(
                      margin: EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Brown',
                          style: whiteTextStyle,
                        ),
                      ),
                      color: Colors.brown,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _pickedColor(Colors.red);
                  },
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Red',
                        style: whiteTextStyle,
                      ),
                    ),
                    color: Colors.red,
                  ),
                ),
                InkWell(
                  onTap: () {
                    _pickedColor(Colors.green);
                  },
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Green',
                        style: whiteTextStyle,
                      ),
                    ),
                    color: Colors.green,
                  ),
                ),
                InkWell(
                  onTap: () {
                    _pickedColor(Colors.orange);
                  },
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Orange',
                        style: whiteTextStyle,
                      ),
                    ),
                    color: Colors.orange,
                  ),
                ),
                InkWell(
                  onTap: () {
                    _pickedColor(Colors.yellow);
                  },
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Yellow',
                        style: whiteTextStyle,
                      ),
                    ),
                    color: Colors.yellow,
                  ),
                ),
                InkWell(
                  onTap: () {
                    _pickedColor(Colors.purple);
                  },
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Purple',
                        style: whiteTextStyle,
                      ),
                    ),
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: _selectedColorVisibility,
            child: Container(
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.all(.0),
              child: Center(
                child: Text(
                  'SELECTED',
                  style: whiteTextStyle,
                ),
              ),
              color: _currentColor,
            ),
          ),
        ],
      ),
    );
  }
}
