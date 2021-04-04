import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          children: [
            SizedBox(
              height: 150.0,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 60.0),
              color: Colors.white,
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
                CButton("AC", const Color(0xFF333333), Colors.white),
                CButton("+/-", const Color(0xFF333333), Colors.white),
                CButton("%", const Color(0xFF333333), Colors.white),
                CButton("÷", const Color(0xFFEC8829), Colors.white),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CButton("AC", const Color(0xFF333333), Colors.white),
                CButton("+/-", const Color(0xFF333333), Colors.white),
                CButton("%", const Color(0xFF333333), Colors.white),
                CButton("÷", const Color(0xFFEC8829), Colors.white),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CButton("AC", const Color(0xFF333333), Colors.white),
                CButton("+/-", const Color(0xFF333333), Colors.white),
                CButton("%", const Color(0xFF333333), Colors.white),
                CButton("÷", const Color(0xFFEC8829), Colors.white),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CButton("AC", const Color(0xFF333333), Colors.white),
                CButton("+/-", const Color(0xFF333333), Colors.white),
                CButton("%", const Color(0xFF333333), Colors.white),
                CButton("÷", const Color(0xFFEC8829), Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CButton extends StatelessWidget {
  String _text;
  Color _backColor;
  Color _textColor;
  CButton(this._text, this._backColor, this._textColor);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("hey");
      },
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
