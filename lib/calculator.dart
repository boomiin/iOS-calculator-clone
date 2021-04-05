import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 150.0,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 10.0),
              color: Colors.black,
              child: Text(
                "21",
                textDirection: TextDirection.rtl,
                style: TextStyle(color: Colors.white, fontSize: 100),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CButton("AC", const Color(0xFFA5A5A5), Colors.black),
                CButton("+/-", const Color(0xFFA5A5A5), Colors.black),
                CButton("%", const Color(0xFFA5A5A5), Colors.black),
                CButton("÷", const Color(0xFFEC8829), Colors.white),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CButton("7", const Color(0xFF333333), Colors.white),
                CButton("8", const Color(0xFF333333), Colors.white),
                CButton("9", const Color(0xFF333333), Colors.white),
                CButton("×", const Color(0xFFEC8829), Colors.white),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CButton("4", const Color(0xFF333333), Colors.white),
                CButton("5", const Color(0xFF333333), Colors.white),
                CButton("6", const Color(0xFF333333), Colors.white),
                CButton("-", const Color(0xFFEC8829), Colors.white),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CButton("1", const Color(0xFF333333), Colors.white),
                CButton("2", const Color(0xFF333333), Colors.white),
                CButton("3", const Color(0xFF333333), Colors.white),
                CButton("+", const Color(0xFFEC8829), Colors.white),
              ],
            ),
            Row(
              children: [
                ZeroButton("0", const Color(0xFF333333), Colors.white),
                SizedBox(
                  width: 10,
                ),
                CButton(",", const Color(0xFF333333), Colors.white),
                SizedBox(
                  width: 10,
                ),
                CButton("=", const Color(0xFFEC8829), Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CButton extends StatelessWidget {
  final String _text;
  final Color _backColor;
  final Color _textColor;
  CButton(this._text, this._backColor, this._textColor);

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      onTap: () {},
      child: Container(
        height: 75,
        width: 75,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: this._backColor),
        child: Center(
          child: Text(
            this._text,
            style: TextStyle(
              color: _textColor,
              fontSize: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}

class ZeroButton extends StatelessWidget {
  final String _text;
  final Color _backColor;
  final Color _textColor;

  ZeroButton(this._text, this._backColor, this._textColor);

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      onTap: () {},
      child: Container(
        height: 75,
        width: 180,
        padding: EdgeInsets.only(left: 30),
        margin: EdgeInsets.only(left: 10, top: 5, right: 0, bottom: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: this._backColor),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            this._text,
            style: TextStyle(
              color: _textColor,
              fontSize: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}
