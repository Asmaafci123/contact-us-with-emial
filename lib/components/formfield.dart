import 'package:flutter/material.dart';

Widget defaultTextFormField(String hintText,dynamic numberOfLines,double height,double width)
{
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child:  SizedBox(
        height: height,
        width: width,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 4,
          child: TextFormField(
            maxLines: numberOfLines,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Color(0xFFBDBDBD),
                  fontSize: 14
              ),
              contentPadding:  EdgeInsets.fromLTRB(20, 10, 0, 0),
              isDense: true,
            ),
          ),
        ),
      ),

  );
}