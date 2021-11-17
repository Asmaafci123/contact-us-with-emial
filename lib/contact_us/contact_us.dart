import 'package:contact_us/components/formfield.dart';
import 'package:contact_us/components/theme.dart';
import 'package:contact_us/components/triangle.dart';
import 'package:contact_us/cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../state.dart';
class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {

  late FocusNode focusNode1;
  late FocusNode focusNode2;
  late FocusNode focusNode3;
  late FocusNode focusNode4;
  late FocusNode focusNode5;

  @override
  void initState() {
    focusNode1 = FocusNode();
    focusNode2 = FocusNode();
    focusNode3 = FocusNode();
    focusNode4 = FocusNode();
    focusNode5 = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    focusNode4.dispose();
    focusNode5.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int index = 0;
    Style style = Style();
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
              backgroundColor: Color(0xFFFFFFFF),
              elevation: 0.0,
              leading: IconButton(
                color: style.greenColor,
                onPressed: () {},
                icon: Icon(
                    Icons.arrow_back_ios,
                    size: 20),
              ),
              title: Text('Contact Us', style: style.appBarTitle()),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.segment,
                      color: style.blueColor,
                      size: 25,
                    ))
              ]
          ),
          body: SingleChildScrollView(
            child: Container(
              color: style.whitColor,
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
                            style: style.getInTouch()
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                            'Contact Us for any queries you have in your mind',
                            style: style.queries()
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
                                  onTap: () {
                                    AppCubit.get(context).changeIndex(0);
                                  },
                                  child: Stack(
                                    alignment: AlignmentDirectional.center,
                                    children: [
                                      Container(
                                        color: AppCubit
                                            .get(context)
                                            .color1,
                                        height: 104,
                                        width: 120,
                                      ),
                                      Column(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: style.greenColor,
                                            child: Icon(
                                              Icons.email_outlined,
                                              color: style.whitColor,
                                              size: 28,),
                                          ),
                                          Text('Email',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 14,
                                                  color: AppCubit
                                                      .get(context)
                                                      .fontColor1
                                              ))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                if(AppCubit
                                    .get(context)
                                    .index == 0)
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
                                  onTap: () {
                                    AppCubit.get(context).changeIndex(1);
                                  },
                                  child: Stack(
                                    alignment: AlignmentDirectional.center,
                                    children: [
                                      Container(
                                        color: AppCubit
                                            .get(context)
                                            .color2,
                                        height: 104,
                                        width: 120,
                                      ),
                                      Column(
                                        children: [
                                          CircleAvatar(
                                              backgroundColor: Color(
                                                  0xFF3AB44E),
                                              child: SvgPicture.asset(
                                                'assets/icons/phone.svg',
                                                color: Color(0xFFFFFFFF),
                                                height: 28,
                                                width: 28,)
                                          ),
                                          Text('Telephone',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 14,
                                                  color: AppCubit
                                                      .get(context)
                                                      .fontColor2
                                              ))
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                                if(AppCubit
                                    .get(context)
                                    .index == 1)
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
                                  onTap: () {
                                    AppCubit.get(context).changeIndex(2);
                                  },
                                  child: Stack(
                                    alignment: AlignmentDirectional.center,
                                    children: [
                                      Container(

                                        color: AppCubit
                                            .get(context)
                                            .color3,
                                        height: 104,
                                        width: 120,
                                      ),
                                      Column(
                                        children: [
                                          CircleAvatar(
                                              backgroundColor: style.greenColor,
                                              child: SvgPicture.asset(
                                                'assets/icons/offices.svg',
                                                color: style.whitColor,
                                                height: 28,
                                                width: 28,)
                                          ),
                                          Text('Our Offices',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 14,
                                                  color: AppCubit
                                                      .get(context)
                                                      .fontColor3
                                              ))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                if(AppCubit
                                    .get(context)
                                    .index == 2)
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
                          index: AppCubit
                              .get(context)
                              .index,
                          children: [
                            buildEmailContact(focusNode1),
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

  void requestFocus1() {
    setState(() {
      FocusScope.of(context).requestFocus(focusNode1);
    });
  }

  void requestFocus2() {
    setState(() {
      FocusScope.of(context).requestFocus(focusNode2);
    });
  }

  void requestFocus3() {
    setState(() {
      FocusScope.of(context).requestFocus(focusNode3);
    });
  }

  void requestFocus4() {
    setState(() {
      FocusScope.of(context).requestFocus(focusNode4);
    });
  }

  void requestFocus5() {
    setState(() {
      FocusScope.of(context).requestFocus(focusNode5);
    });
  }

  Widget buildEmailContact(FocusNode focusNode1) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'Ask us anything',
                style: Style().makeCall()),
          ),
          Container(
            height: 4,
            width: 35,
            color: Style().greenColor,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                defaultTextFormField(
                    requestFocus1, focusNode1, 'Name', 2, 50, 344),
                defaultTextFormField(
                    requestFocus2, focusNode2, 'Email', 2, 50, 344),
                defaultTextFormField(
                    requestFocus3, focusNode3, 'Phone Number', 2, 50, 344),
                defaultTextFormField(
                    requestFocus4, focusNode4, 'Subject', 2, 50, 344),
                defaultTextFormField(
                    requestFocus5, focusNode5, 'Message', 5, 101, 344),
                SizedBox(
                  width: 344.0,
                  height: 44.0,
                  child: RaisedButton(

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(20)
                    ),
                    color: Style().greenColor,
                    onPressed: () {},
                    child: Text(
                        'SEND EMAIL', style: Style().sendEmail()),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'We respond your queries in 2 business days. Please be patient',
                  style: Style().makeCall(),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),

        ],
      ),
    );
  }

  Widget buildPhoneContact() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'Make us a Call',
                style: Style().makeCall()),
          ),
          Container(
            height: 4,
            width: 35,
            color: Style().greenColor,
          ),


        ],
      ),
    );
  }
}