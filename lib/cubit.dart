import 'package:contact_us/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/theme.dart';
class AppCubit extends Cubit<AppStates>
{
  AppCubit() :super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  int index=0;
  Color color1=Style().greenColor;
  Color color2=Style().whitColor;
  Color color3=Style().whitColor;
  Color fontColor1=Style().whitColor;
  Color fontColor2=Style().blueColor;
  Color fontColor3=Style().blueColor;

  void changeIndex(int ind)
  {
    index=ind;
    if(index==0)
    {
      color1=Style().greenColor;
      color2=Style().whitColor;
      color3=Style().whitColor;


      fontColor1=Style().whitColor;
      fontColor2=Style().blueColor;
      fontColor3=Style().blueColor;
    }
    else if(index==1)
    {
      color2=Style().greenColor;
      color1=Style().whitColor;
      color3=Style().whitColor;

      fontColor2=Style().whitColor;
      fontColor1=Style().blueColor;
      fontColor3=Style().blueColor;

    }
    else
    {
      color3=Style().greenColor;
      color1=Style().whitColor;
      color2=Style().whitColor;

      fontColor3=Style().whitColor;
      fontColor2=Style().blueColor;
      fontColor1=Style().blueColor;
    }
    emit(ChangeIndex());
  }

  Color headerColor=Style().blueColor;
  void changeHeaderColor(bool isTrue)
  {
    if(isTrue)
    {
      headerColor=Style().greenColor;
    }
    else
    {
      headerColor=Style().blueColor;
    }
    emit(changeHeaderColorState());
  }

  Color borderColor=Style().whitColor;
  void changeBorderColor(bool isTrue)
  {
    if(isTrue)
    {
      borderColor=Style().greenColor;
    }
    else
    {
      borderColor=Style().blueColor;
    }
    emit(changeBorderColorState());
  }
}