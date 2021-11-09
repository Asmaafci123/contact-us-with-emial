import 'package:contact_us/components/formfield.dart';
import 'package:contact_us/components/triangle.dart';
import 'package:contact_us/cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../state.dart';
class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int index=0;
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state)
      {
        return  Scaffold(
          appBar: AppBar(
              backgroundColor: Color(0xFFFFFFFF),
              elevation: 0.0,
              leading: IconButton(
                color: Color(0xFF3AB44E),
                onPressed: (){},
                icon: Icon(
                    Icons.arrow_back_ios,
                    size:20),
              ),
              title: Text('Contact Us',style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontFamily: 'Montserrat'
              ),),
              actions:[
                IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.segment,
                      color: Color(0xFF213955),
                      size: 25,
                    ))
              ]
          ),
          body: SingleChildScrollView(
            child: Container(
              color:Color(0xFFFFFFFF),
              child: Column(
                children: [
                  const Divider(
                    color: Color(0xFFDADADA),
                    height: 20,
                    thickness: 2,
                    indent: 0,
                    endIndent: 0,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          'Get In Touch',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Montserrat',
                              color: Color(0xFF000000)
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Contact Us for any queries you have in your mind',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat-Medium',
                              color: Color(0xFFA3A3A3)
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                    AppCubit.get(context).changeIndex(0);

                                  },
                                  child: Stack(
                                    alignment:AlignmentDirectional.center,
                                    children: [
                                      Container(
                                        color: AppCubit.get(context).color1,
                                        height: 104,
                                        width: 120,
                                      ),
                                      Column(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Color(0xFF3AB44E),
                                            child: Icon(Icons.email_outlined,color: Color(0xFFFFFFFF),size: 28,),
                                          ),
                                          Text('Email',
                                              style:TextStyle(
                                                  fontFamily: 'Montserrat',
                                                fontSize: 14,
                                                color:AppCubit.get(context).fontColor1
                                              ))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                if(AppCubit.get(context).index==0)
                                  Container(
                                    height: 10,
                                    width: 20,
                                    child: CustomPaint(
                                      foregroundPainter: TrianglePainter(),
                                    ),
                                  )
                              ],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                    AppCubit.get(context).changeIndex(1);
                                  },
                                  child: Stack(
                                    alignment:AlignmentDirectional.center,
                                    children: [
                                      Container(
                                        color:AppCubit.get(context).color2,
                                        height: 104,
                                        width: 120,
                                      ),
                                      Column(
                                        children: [
                                          CircleAvatar(
                                              backgroundColor: Color(0xFF3AB44E),
                                              child: SvgPicture.asset('assets/icons/phone.svg',color: Color(0xFFFFFFFF),height: 28,width: 28,)
                                          ),
                                          Text('Telephone',
                                              style:TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 14,
                                                  color:AppCubit.get(context).fontColor2
                                              ))
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                                if(AppCubit.get(context).index==1)
                                  Container(
                                    height: 10,
                                    width: 20,
                                    child: CustomPaint(
                                      foregroundPainter: TrianglePainter(),
                                    ),
                                  )
                              ],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                    AppCubit.get(context).changeIndex(2);
                                  },
                                  child: Stack(
                                    alignment:AlignmentDirectional.center,
                                    children: [
                                      Container(

                                        color: AppCubit.get(context).color3,
                                        height: 104,
                                        width: 120,
                                      ),
                                      Column(
                                        children: [
                                          CircleAvatar(
                                              backgroundColor: Color(0xFF3AB44E),
                                              child: SvgPicture.asset('assets/icons/offices.svg',color: Color(0xFFFFFFFF),height: 28,width: 28,)
                                          ),
                                          Text('Our Offices',
                                              style:TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 14,
                                                  color:AppCubit.get(context).fontColor3
                                              ))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                if(AppCubit.get(context).index==2)
                                  Container(
                                    height: 10,
                                    width: 20,
                                    child: CustomPaint(
                                      foregroundPainter: TrianglePainter(),
                                    ),
                                  )
                              ],
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        IndexedStack(
                          index: AppCubit.get(context).index,
                          children: [
                            buildEmailContact(),
                            buildPhoneContact()
                          ],

                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        );
      },
    );
  }
  Widget buildEmailContact()
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Ask us anything',
              style: TextStyle(
                  color: Color(0xFF000000),

                fontSize: 14,
                fontFamily: 'Montserrat'
              ),),
          ),
          Container(
            height: 4,
            width: 35,
            color: Color(0xFF3AB44E),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child:  Column(
                children: [
                  defaultTextFormField('Name',1,50,344),
                  defaultTextFormField('Email',1,50,344),
                  defaultTextFormField('Phone Number',1,50,344),
                  defaultTextFormField('Subject',1,50,344),
                  defaultTextFormField('Message',null,101,344),
                  SizedBox(
                    width: 344.0,
                    height: 44.0,
                    child: RaisedButton(

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(20)
                      ),
                      color: Color(0xFF3AB44E),
                      onPressed: (){},
                      child: Text(
                          'SEND EMAIL',style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontFamily: 'Montserrat-Bold',
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'We respond your queries in 2 business days. Please be patient',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                      fontSize: 14
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),

        ],
      ),
    );
  }
  Widget buildPhoneContact()
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Make us a Call',
              style: TextStyle(
                  color: Color(0xFF000000),

                  fontSize: 14,
                  fontFamily: 'Montserrat'
              ),),
          ),
          Container(
            height: 4,
            width: 35,
            color: Color(0xFF3AB44E),
          ),


        ],
      ),
    );
  }

}

