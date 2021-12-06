import 'dart:ui';

import 'package:contact_us/components/shared_text.dart';
import 'package:contact_us/components/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constentes.dart';
Widget buildAgencyItem(String link) {
  return Card(
    shape: OutlineInputBorder(
      borderSide: BorderSide(color:Style().whitColor),
    ),
    elevation: 4,
    child: Image(
      image: AssetImage(link),
      //    fit: BoxFit.cover,
      width: 118,
    ),
  );
}

Widget buildPageViewItem() {
  return Container(
    color: Color(0xFF007BFF),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           sharedWidget('New Properties','Montserrat',Style().whitColor,14,FontWeight.normal,FontStyle.normal),
            SizedBox(
              height: 20,
            ),
           sharedWidget('Shops | Apartments','Montserrat',Style().whitColor,14,FontWeight.bold,FontStyle.normal),
            SizedBox(
              height: 20,
            ),
            sharedWidget('Added','Montserrat',Style().whitColor,14,FontWeight.normal,FontStyle.normal),
            SizedBox(
              height: 10,
            ),
          ],
        ),
        SizedBox(
          width: 30,
        ),
        Container(
          child: Image(
            image: AssetImage('assets/images/home.png'),
            height: 170,
            width: 138,
          ),
        )
      ],
    ),
  );
}

Widget buildCarousleItem() {
  return Container(
      width:double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Image.png'),
            fit: BoxFit.cover,
          )),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  Spacer(),
                  IconButton(
                    iconSize: 19,
                    icon: Icon(
                      Icons.favorite_border,
                      color: Style().whitColor,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: sharedWidget('APARTMENT','Montserrat',Style().whitColor,6,FontWeight.normal,FontStyle.normal),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Style().greenColor,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: sharedWidget('FOR SALE','Montserrat',Style().whitColor,6,FontWeight.normal,FontStyle.normal),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Style().blueColor,
                        ),
                      )
                    ],
                  ),
                  sharedWidget('Two Bed Room Flat','Montserrat',Style().whitColor,18,FontWeight.normal,FontStyle.normal),
                  sharedWidget('Faisal Town - F-18, Islamabad','Montserrat',Style().whitColor,10,FontWeight.normal,FontStyle.normal),
                  SizedBox(height: 10,),
                  divider,
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 8, 4, 8),
                    child: Row(
                      children: [
                        Container(
                            height: 10,
                            width: 10,
                            child: Image(
                              image: AssetImage('assets/images/img1.png'),
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        sharedWidget('865 Sq. Ft','Montserrat',Style().whitColor,10,FontWeight.normal,FontStyle.normal),

                        SizedBox(
                          width: 4,
                        ),
                        Container(
                            height: 10,
                            width: 10,
                            child: Image(
                              image: AssetImage('assets/images/img2.png'),
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 2,
                        ),
                        sharedWidget('2','Montserrat',Style().whitColor,10,FontWeight.normal,FontStyle.normal),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                            height: 10,
                            width: 10,
                            child: Image(
                              image: AssetImage('assets/images/img3.png'),
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 2,
                        ),
                        sharedWidget('2','Montserrat',Style().whitColor,10,FontWeight.normal,FontStyle.normal),
                        Spacer(),
                        sharedWidget('PKR 60 Lakh','Montserrat',Style().greenColor,12,FontWeight.bold,FontStyle.normal),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,)
          ]));
}

Widget buildMegaProjectsItem(String link)
{
  return Container(
    height: 220,
    decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(link),
          fit: BoxFit.cover,
        )),
    child: Column(
      children: [
        Spacer(),
        sharedWidget('Faisal Town - F-18','Montserrat',Style().whitColor,16,FontWeight.bold,FontStyle.normal),
        sharedWidget('Islamabad','Montserrat',Style().whitColor,16,FontWeight.bold,FontStyle.normal),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            color: Style().whitColor,
            height:40,
            width: 160 ,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sharedWidget('Starting From','Montserrat',Style().blueColor,11,FontWeight.normal,FontStyle.normal),
                      sharedWidget('PKR 29.4 Lakh','Montserrat',Style().greenColor,12,FontWeight.bold,FontStyle.normal),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 44,
                    width: 24,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/image 7.png'),
                          fit: BoxFit.fill,

                        )),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    ),
  );
}
Widget buildPageView(PageController controller,List list,int count )
{
  return PageView.builder(
    controller: controller,
    itemBuilder: (context, index) => list[index],
    itemCount:count,
    scrollDirection: Axis.horizontal,
  );
}
Widget buildListView(List list,int count,double width)
{
  return ListView.separated(
    scrollDirection: Axis.horizontal,
    itemBuilder: (context,index)=>list[index],
    itemCount: count,
    separatorBuilder: (BuildContext context, int index)=>SizedBox(
      width: width,
    ),
  );
}
Widget buildGreenContainer()
{
  return  Container(
      height: 4,
      width: 35,
      color: Style().greenColor,
  );
}