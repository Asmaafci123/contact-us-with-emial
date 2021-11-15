import 'package:flutter/material.dart';
class Style
{
  Color whitColor=Color(0xFFFFFFFF);
  Color greyColor=Color(0xFFA3A3A3);
  Color greenColor=Color(0xFF3AB44E);
  Color blueColor=Color(0xFF213955);
  Color blackColor=Color(0xFF000000);
  TextStyle appBarTitle()
  {

    return TextStyle(
        fontSize: 22,
        color: blackColor,
        fontFamily: 'Montserrat'
    );
  }
  TextStyle getInTouch()
  {

    return TextStyle(
        fontSize: 18,
        fontFamily: 'Montserrat',
        color: blackColor
    );
  }
  TextStyle queries()
  {

    return TextStyle(
        fontSize: 12,
        fontFamily: 'Montserrat-Medium',
        color:greyColor
    );
  }
  TextStyle makeCall()
  {

    return TextStyle(
        color:blackColor,
        fontSize: 14,
        fontFamily: 'Montserrat'
    );
  }
  TextStyle sendEmail()
  {

    return TextStyle(
        color: whitColor,
        fontFamily: 'Montserrat-Bold',
        fontWeight: FontWeight.bold
    );
  }
}