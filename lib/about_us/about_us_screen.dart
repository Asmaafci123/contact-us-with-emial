import 'package:contact_us/components/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit.dart';
import '../state.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    List<MyItem> _item = <MyItem>[
      MyItem(
          header: 'Our Mission',
          body:
              'MR Plaza is a Commercial and Residential project developed by Malik Ramzan Associates Marketing by Al Moqeet Pakistan Pvt in Faisal Town Islamabad. Expected to complete in 2019, the development is situated within walking distance of the planned Metro Bus Service and at close proximity to all basic amenities such as schools, hospital and supermarkets. MR Plaza features a range of studios as well as one and two bedroom apartments which will be provided with all amenities such as a 24/hour elevator and maintenance system, pand alot of car parking. maintenance system, pand alot of car parking. maintenance system, pand alot of car parking.'),
      MyItem(
          header: 'Our Vision',
          body:
              'MR Plaza is a Commercial and Residential project developed by Malik Ramzan Associates Marketing by Al Moqeet Pakistan Pvt in Faisal Town Islamabad. Expected to complete in 2019, the development is situated within walking distance of the planned Metro Bus Service and at close proximity to all basic amenities such as schools, hospital and supermarkets. MR Plaza features a range of studios as well as one and two bedroom apartments which will be provided with all amenities such as a 24/hour elevator and maintenance system, pand alot of car parking. maintenance system, pand alot of car parking. maintenance system, pand alot of car parking.'),
      MyItem(
          header: 'Our Winning Culture',
          body:
              'MR Plaza is a Commercial and Residential project developed by Malik Ramzan Associates Marketing by Al Moqeet Pakistan Pvt in Faisal Town Islamabad. Expected to complete in 2019, the development is situated within walking distance of the planned Metro Bus Service and at close proximity to all basic amenities such as schools, hospital and supermarkets. MR Plaza features a range of studios as well as one and two bedroom apartments which will be provided with all amenities such as a 24/hour elevator and maintenance system, pand alot of car parking. maintenance system, pand alot of car parking. maintenance system, pand alot of car parking.'),
      MyItem(
          header: 'Live Our Values',
          body:
              'MR Plaza is a Commercial and Residential project developed by Malik Ramzan Associates Marketing by Al Moqeet Pakistan Pvt in Faisal Town Islamabad. Expected to complete in 2019, the development is situated within walking distance of the planned Metro Bus Service and at close proximity to all basic amenities such as schools, hospital and supermarkets. MR Plaza features a range of studios as well as one and two bedroom apartments which will be provided with all amenities such as a 24/hour elevator and maintenance system, pand alot of car parking. maintenance system, pand alot of car parking. maintenance system, pand alot of car parking.')
    ];
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          appBar: AppBar(
              backgroundColor: Style().whitColor,
              elevation: 0.0,
              leading: IconButton(
                color: Style().greenColor,
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios, size: 20),
              ),
              title: Text(
                'About Us',
                style: TextStyle(
                    fontSize: 22,
                    color: Style().blueColor,
                    fontFamily: 'Montserrat_Bold'),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.segment,
                      color: Style().blueColor,
                      size: 25,
                    ))
              ]),
          body: Container(
              color:Style().whitColor,
              child: ListView(
                  shrinkWrap: true,
                  children: [
                    Divider(
                      color: Style().whitColor,
                      height: 20,
                      thickness: 2,
                      indent: 0,
                      endIndent: 0,
                    ),
                    Card(
                      elevation: 3,
                      child: ExpansionTile(
                        trailing:  Icon(

                          Icons.keyboard_arrow_down_outlined,
                          color: AppCubit.get(context).headerColor,
                        ),
                        title: Text(
                          _item[0].header,
                          style: TextStyle(
                            color:Style().blueColor,),),
                        onExpansionChanged: (bool exchange)
                        {
                          setState(() {
                            print(exchange);
                            AppCubit.get(context).changeHeaderColor(exchange);

                          });
                        },
                        children: <Widget>[
                        Divider(
                            color: Style().whitColor,
                            height: 20,
                            thickness: 1,
                            indent: 18,
                            endIndent: 18,
                          ),
                          ListTile(title: Text(
                              _item[0].body,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  color: Style().greyColor,
                                  height: 2,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1))),

                        ],
                      ),
                    ),
                    Card(
                        elevation: 3,
                        child:ExpansionTile(
                          trailing: Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color:Style().blueColor,),
                          title: Text(
                              _item[1].header,
                              style: TextStyle(color:Style().blueColor)),
                          children: <Widget>[
                            Divider(
                              color:Style().whitColor,
                              height: 20,
                              thickness: 1,
                              indent: 31,
                              endIndent: 31,
                            ),
                            ListTile(title:
                            Text(_item[1].body,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    color: Style().greyColor))),

                          ],
                        )),
                    Card(
                      elevation: 3,
                      child: ExpansionTile(
                        trailing: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Style().blueColor,),
                        title: Text(_item[2].header,style: TextStyle(color:Style().blueColor)),
                        children: <Widget>[
                          Divider(
                            color:Style().whitColor,
                            height: 20,
                            thickness: 1,
                            indent: 31,
                            endIndent: 31,
                          ),
                          ListTile(title: Text(
                            _item[2].body,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 12,
                                color: Style().greyColor),)),

                        ],
                      ),
                    ),
                    Card(
                      elevation: 3,
                      child: ExpansionTile(
                        trailing: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Style().blueColor,),
                        title: Text(_item[3].header,style: TextStyle(color:Style().blueColor)),
                        children: <Widget>[
                         Divider(
                            color: Style().whitColor,
                            height: 20,
                            thickness: 1,
                            indent: 31,
                            endIndent: 31,
                          ),
                          ListTile(title:
                          Text(_item[3].body,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  color: Style().greyColor))),

                        ],
                      ),
                    ),
                  ])),
        );
      },
    );
  }
}

class MyItem {
  late final String header;
  bool isExpanded;
  late final String body;
  MyItem({required this.header, required this.body, this.isExpanded: false});
}
