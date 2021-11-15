import 'package:contact_us/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class AppCubit extends Cubit<AppStates>
{
  AppCubit() :super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  int index=0;
  Color color1=Color(0xFF3AB44E);
  Color color2=Color(0xFFFFFFFF);
  Color color3=Color(0xFFFFFFFF);
  Color fontColor1=Color(0xFFFFFFFF);
  Color fontColor2=Color(0xFF213955);
  Color fontColor3=Color(0xFF213955);

  void changeIndex(int ind)
  {
    index=ind;
    if(index==0)
      {
        color1=Color(0xFF3AB44E);
        color2=Color(0xFFFFFFFF);
        color3=Color(0xFFFFFFFF);


        fontColor1=Color(0xFFFFFFFF);
        fontColor2=Color(0xFF213955);
        fontColor3=Color(0xFF213955);
      }
    else if(index==1)
      {
        color2=Color(0xFF3AB44E);
        color1=Color(0xFFFFFFFF);
        color3=Color(0xFFFFFFFF);

        fontColor2=Color(0xFFFFFFFF);
        fontColor1=Color(0xFF213955);
        fontColor3=Color(0xFF213955);

      }
    else
      {
        color3=Color(0xFF3AB44E);
        color1=Color(0xFFFFFFFF);
        color2=Color(0xFFFFFFFF);

        fontColor3=Color(0xFFFFFFFF);
        fontColor2=Color(0xFF213955);
        fontColor1=Color(0xFF213955);
      }
    emit(ChangeIndex());
  }

  Color headerColor=Color(0xFF213955);
  void changeHeaderColor(bool isTrue)
  {
    if(isTrue)
      {
        headerColor=Color(0xFF3AB44E);
      }
    else
      {
        headerColor=Color(0xFF213955);
      }
  }

  Color borderrColor=Color(0xFFDADADA);
  void changeBorderColor(bool isTrue)
  {
    if(isTrue)
    {
      borderrColor=Color(0xFF3AB44E);
    }
    else
    {
      borderrColor=Color(0xFF213955);
    }
  }
}