import 'package:flutter/material.dart';

final List<Color> _colors = [
  Colors.white,
  Colors.red,
  Colors.orange,
  Colors.purple,
  Colors.green,
  Colors.blue
];

class OxoScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => OxoScreenState();
}

class OxoScreenState extends State<OxoScreen> {
  int _index;
  Color _color;

  void _updateIndex() {
    if (_index == _colors.length - 1) {
      _index = null;
    }
    if (_index == null) {
      _index = 0;
    } else {
      ++_index;
    }
  }

  void _updateColor() {
    _updateIndex();
    setState(() {
      _color = _colors[_index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Play OXO'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      _updateColor();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 5),
                        shape: BoxShape.circle,
                        color: _color,
                      ),
                      child: Center(
                        child: Text('1'),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 5),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text('2'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 5),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text('3'),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 5),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text('4'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 5),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text('5'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 5),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text('6'),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 5),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text('7'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 5),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text('8'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 5),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text('9'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
