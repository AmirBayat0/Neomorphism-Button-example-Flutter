import 'package:flutter/material.dart';

class LightMode extends StatefulWidget {
  const LightMode({Key? key}) : super(key: key);

  @override
  _LightModeState createState() => _LightModeState();
}

class _LightModeState extends State<LightMode> {
  bool _iselevated = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
            child: GestureDetector(
          child: AnimatedContainer(
            child: Center(
                child: Icon(
              Icons.android,
              size: 100,
              color: _iselevated ? Colors.black : Colors.grey[300],
            )),
            duration: const Duration(milliseconds: 200),
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(50),
                boxShadow: _iselevated
                    ? [
                        BoxShadow(
                          color: Colors.grey[500]!,
                          offset: const Offset(4, 4),
                          blurRadius: 15,
                          spreadRadius: 1,
                        ),
                        const BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4, -4),
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