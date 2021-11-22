import 'package:contact_us/components/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
Widget defaultTextFormField(requestFocus,FocusNode focusNode1,String hintText,dynamic numberOfLines,double height,double width)
{
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child:  Container(
      height: height,
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
                  width: 0.7,color:Style().greenColor,),
              ),
              hintText: hintText,
              labelText: hintText,
              labelStyle:TextStyle(
                  fontFamily: 'Montserrat',
                  color: focusNode1.hasFocus?Style().greenColor:Style().greyColor,
                  fontSize: 14
              ) ,
              hintStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Style().greyColor,
                  fontSize: 14
              ),
              contentPadding:  EdgeInsets.fromLTRB(20, 10, 0, 0),
              isDense: true,
            ),
          ),
    ),

  );
}
Widget SearchTextFormField(requestFocus,FocusNode focusNode)
{
  return Card(

    color:  Color(0xFFFFFFFF),
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Colors.white70, width: 0.7),
      borderRadius: BorderRadius.circular(25),
    ),
    margin: EdgeInsets.all(20.0),
    child: TextFormField(
      onTap: requestFocus,
      focusNode: focusNode,
      decoration: InputDecoration(
        contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 16.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(
              width: 0.7),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          borderSide: BorderSide(
            width: 0.7,color:Style().greenColor,),
        ),
        hintText: 'Search ...',
        labelText: 'Search ...',
        labelStyle:TextStyle(
            fontFamily: 'Montserrat',
            color: focusNode.hasFocus?Style().greenColor:Style().greyColor,
            fontSize: 14
        ) ,
        hintStyle: TextStyle(
            fontFamily: 'Montserrat',
            color: Style().greyColor,
            fontSize: 14
        ),
        isDense: true,
        prefixIcon: Icon(Icons.search,size: 25,),
        suffixIcon: IconButton(
            icon: SvgPicture.asset('assets/images/filter.svg',height: 15,width: 15,),
          onPressed: (){},
          iconSize: 15,
        )
      ),
    ),
  );
}