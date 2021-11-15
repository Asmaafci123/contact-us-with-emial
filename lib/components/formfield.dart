import 'package:flutter/material.dart';

Widget defaultTextFormField(requestFocus,FocusNode focusNode1,String hintText,dynamic numberOfLines,double height,double width)
{
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child:  Container(
      child: TextFormField(
            onTap: requestFocus,
            focusNode: focusNode1,
            maxLines: numberOfLines,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  width: 0.7),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                borderSide: BorderSide(
                  width: 0.7,color:Color(0xFF3AB44E),),
              ),
              hintText: hintText,
              labelText: hintText,
              labelStyle:TextStyle(
                  fontFamily: 'Montserrat',
                  color: focusNode1.hasFocus?Color(0xFF3AB44E):Color(0xFFBDBDBD),
                  fontSize: 14
              ) ,
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

  );
}