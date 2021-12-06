import 'package:contact_us/components/theme.dart';
import 'package:flutter/material.dart';

Widget buildText(String text) {
  return Text(text,
      style: TextStyle(
          color: Style().blueColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat'));
}
Widget buildShowAll()
{
  return Row(
    children: [
      Text('Show All',
          style: TextStyle(
              color: Style().greenColor,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat')),
      IconButton(
        iconSize: 20,
        onPressed: () {},
        icon: Icon(
          Icons.arrow_forward_outlined,
          color: Style().greenColor,
        ),
      ),
    ],
  );
}