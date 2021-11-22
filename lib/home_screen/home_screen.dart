import 'dart:ui';
import 'package:contact_us/components/theme.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:contact_us/components/formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late FocusNode focusNode;
  @override
  void initState() {
    focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    focusNode.dispose();
  }

  void requestFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(focusNode);
    });
  }

  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    List<Widget> agenciesList = [
      buildAgencyItem('assets/images/image 4.png'),
      buildAgencyItem('assets/images/image 5.png'),
      buildAgencyItem('assets/images/image 6.png'),
    ];
    List<Widget> list = [
      buildPageViewItem(),
      buildPageViewItem(),
      buildPageViewItem(),
      buildPageViewItem(),
      buildPageViewItem(),
      buildPageViewItem(),
      buildPageViewItem()
    ];
    List<Widget> properties = [
      buildCarousleItem(),
      buildCarousleItem(),
      buildCarousleItem(),
    ];

    List<Widget>megaList=[
      buildMegaProjectsItem('assets/images/Image.png'),
      buildMegaProjectsItem('assets/images/Image.png'),
      buildMegaProjectsItem('assets/images/Image.png'),
      buildMegaProjectsItem('assets/images/Image.png'),
    ];
    int _currentIndex=0;
    var controller = PageController();
    var controller1 = PageController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFFFFFFF),
        leading: Container(
          height: 20,
          width: 21,
          child: Image(
            image: AssetImage('assets/images/vector1.png'),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 30,
              width: 30,
              child: Image(
                image: AssetImage('assets/images/groupe1.png'),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'BookProperty',
              style: TextStyle(
                  color: Color(0xFF213955),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  fontStyle: FontStyle.normal),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: SearchTextFormField(requestFocus, focusNode),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.bullhorn,
                    size: 12, color: Style().blueColor),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Luxuries Appartments Added to Mega Projects',
                  style: TextStyle(
                      color: Style().greyColor,
                      fontFamily: 'Montserrat',
                      fontSize: 12),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                height: 200,
                child: PageView.builder(
                  controller: controller,
                  itemBuilder: (context, index) => list[index],
                  itemCount: 7,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Center(
                child: SmoothPageIndicator(
                    controller: controller,
                    count: 7,
                    effect: ScrollingDotsEffect(
                      activeDotColor: Style().greenColor,
                      fixedCenter: true,
                      activeStrokeWidth: 2,
                      activeDotScale: 1.3,
                      maxVisibleDots: 7,
                      radius: 8,
                      spacing: 6,
                      dotHeight: 10,
                      dotWidth: 10,
                    )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
              child: Container(
                height: 4,
                width: 35,
                color: Style().greenColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 0, 10, 0),
              child: Row(
                children: [
                  Text('Feature Properties',
                      style: TextStyle(
                          color: Style().blueColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat')),
                  Spacer(),
                  Row(
                    children: [
                      Text('Show All',
                          style: TextStyle(
                              color: Style().greenColor,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat')),
                      IconButton(
                        iconSize: 20,
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_outlined,
                          color: Style().greenColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 220,
                onPageChanged: (index, reason)
                {
                  setState(() {
                    _currentIndex = index; //<-- Page index
                  });
                },
                aspectRatio: 16/5,
                initialPage: 0,
                viewportFraction: 0.52,
                enlargeCenterPage: true,
                //  enlargeStrategy: CenterPageEnlargeStrategy.height
              ),
              items: properties,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
              child: Container(
                height: 4,
                width: 35,
                color: Style().greenColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 0, 10, 0),
              child: Row(
                children: [
                  Text('Mega Projects',
                      style: TextStyle(
                          color: Style().blueColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat')),
                  Spacer(),
                  Row(
                    children: [
                      Text('Show All',
                          style: TextStyle(
                              color: Style().greenColor,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat')),
                      IconButton(
                        iconSize: 20,
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_outlined,
                          color: Style().greenColor,

                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding:const EdgeInsets.fromLTRB(17, 0, 0, 0),
              child: Container(
                height: 220,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)=>megaList[index],
                  itemCount: 4,
                  separatorBuilder: (BuildContext context, int index)=>SizedBox(
                    width: 10,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Container(
                height: 4,
                width: 35,
                color: Style().greenColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                children: [
                  Text('Our Agencies',
                      style: TextStyle(
                          color: Style().blueColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat')),
                  Spacer(),
                  Row(
                    children: [
                      Text('Show All',
                          style: TextStyle(
                              color: Style().greenColor,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat')),
                      IconButton(
                        iconSize: 20,
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_outlined,
                          color: Style().greenColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height:118,
                child: PageView(
                  controller: controller1,
                  children: [
                    Container(
                      height:118,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index)=>agenciesList[index],
                        itemCount: 3,
                        separatorBuilder: (BuildContext context, int index)=>SizedBox(
                          width: 5,
                        ),
                      ),
                    ),
                    Container(
                      height:118,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index)=>agenciesList[index],
                        itemCount: 3,
                        separatorBuilder: (BuildContext context, int index)=>SizedBox(
                          width: 5,
                        ),
                      ),
                    ),
                    Container(
                      height:118,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index)=>agenciesList[index],
                        itemCount: 3,
                        separatorBuilder: (BuildContext context, int index)=>SizedBox(
                          width: 5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Center(
                child: SmoothPageIndicator(
                    controller: controller1,
                    count: 3,
                    effect: ExpandingDotsEffect(
                        activeDotColor:Style().greenColor,
                      dotHeight: 7,
                      dotWidth: 7
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildAgencyItem(String link) {
    return Card(
      shape: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFDADADA)),
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
              Text(
                'New Properties',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFFFDFDFD)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Shops | Apartments',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFFFDFDFD)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Added',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFFFDFDFD)),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            height: 146,
            width: 138,
            child: Image(
              image: AssetImage('assets/images/home.png'),
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
                        child: Text('APARTMENT',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontStyle: FontStyle.normal,
                              fontSize: 6,
                            )),
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
                        child: Text('FOR SALE',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 6,
                                fontStyle: FontStyle.normal)),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Style().blueColor,
                      ),
                    )
                  ],
                ),
                Text(
                  'Two Bed Room Flat',
                  style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 18,
                      fontFamily: 'Montserrat'),
                ),
                Text(
                  'Faisal Town - F-18, Islamabad',
                  style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 10,
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(height: 10,),
                Divider(
                  thickness: 1,
                    height: 1,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.white),
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
                      Text(
                        '865 Sq. Ft',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Container(
                          height: 10,
                          width: 10,
                          child: Image(
                            image: AssetImage('assets/images/img2.png'),
                            fit: BoxFit.cover,
                          )),
                      Text(
                        '2',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Container(
                          height: 10,
                          width: 10,
                          child: Image(
                            image: AssetImage('assets/images/img3.png'),
                            fit: BoxFit.cover,
                          )),
                      Text(
                        '2',
                        style: TextStyle(color: Colors.white),
                      ),
                      Spacer(),
                      Text(
                        'PKR 60 Lakh',
                        style: TextStyle(
                          color: Style().greenColor,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 10
                        ),
                      )
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
            Text('Faisal Town - F-18',
              style: TextStyle(
                color: Style().whitColor,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,

              ),
            ),
            Text('Islamabad',
              style: TextStyle(
                color: Style().whitColor,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,

              ),
            ),
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
                          Text('Starting From',
                            style: TextStyle(
                              color: Style().blueColor,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              fontSize: 11

                            ),
                          ),
                          Text('PKR 29.4 Lakh',
                            style: TextStyle(
                                color: Style().greenColor,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                                fontSize: 12

                            ),
                          ),
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
}

