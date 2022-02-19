import 'package:flutter/material.dart';

class DarkMode extends StatefulWidget {
  const DarkMode({Key? key}) : super(key: key);

  @override
  _DarkModeState createState() => _DarkModeState();
}
/////////////////////////////////////
/// @CodeWithFlexz on Instagram
///
/// AmirBayat0 on Github
/// Programming with Flexz on Youtube
/////////////////////////////////////
class _DarkModeState extends State<DarkMode> {
  bool _iselevated = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[850],
        body: Center(
            child: GestureDetector(
          child: AnimatedContainer(
            child: Center(
                child: Icon(
              Icons.android,
              size: 100,
              color: _iselevated ? Colors.grey[300] : Colors.grey[850],
            )),
            duration: const Duration(milliseconds: 200),
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(50),
                boxShadow: _iselevated
                    ? [
                        BoxShadow(
                          color: Colors.grey[900]!,
                          offset: const Offset(4, 4),
                          blurRadius: 15,
                          spreadRadius: 1,
                        ),
                         BoxShadow(
                          color: Colors.grey[800]!,
                          offset: const Offset(-4, -4),
                          blurRadius: 15,
                          spreadRadius: 1,
                        ),
                      ]
                    : null),
          ),
          onTap: () {
            setState(() {
              _iselevated = !_iselevated;
            });
          },
        )),
      ),
    );
  }
}
