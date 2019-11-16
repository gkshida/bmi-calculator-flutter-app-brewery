import 'package:flutter/material.dart';

const textStyle = TextStyle(
  fontSize: 16.0,
  color: Color(0xFF8D8E98),
);

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;

  IconContent({@required this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 50.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          text,
          style: textStyle,
        )
      ],
    );
  }
}
