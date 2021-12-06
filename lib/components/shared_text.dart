import 'dart:ui';

import 'package:contact_us/components/theme.dart';
import 'package:flutter/material.dart';

Text sharedWidget(
    String text,
    String fontFamily,
    Color color,
    double size,
    FontWeight fontWeight,
    FontStyle fontStyle
    )
{
  return Text(
    text,
    style: TextStyle(
        fontFamily: fontFamily,
        fontSize: size,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
        color: color
    ),
  );
}