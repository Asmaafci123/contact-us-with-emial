import 'dart:ui';
import 'package:contact_us/components/commen_text.dart';
import 'package:contact_us/components/custom_widgets.dart';
import 'package:contact_us/components/lists.dart';
import 'package:contact_us/components/shared_text.dart';
import 'package:contact_us/components/theme.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
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

    int _currentIndex=0;
    var controller = PageController();
    var controller1 = PageController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor:Style().whitColor,
        leading: Container(
          height: 20,
          width: 21,
          child: Image(
            image: AssetImage('assets/images/vector1.png'),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image(
                image: AssetImage('assets/images/groupe1.png'),
                height: 50,
                width: 40,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            sharedWidget('BookProperty','Montserrat',Style().blueColor,18,FontWeight.bold,FontStyle.normal),

          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.bullhorn,
                      size: 12, color: Style().blueColor),
                  SizedBox(
                    width: 5,
                  ),
                  sharedWidget('Luxuries Appartments Added to Mega Projects','Montserrat',Style().greyColor,12,FontWeight.bold,FontStyle.normal),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                height: 200,
                child: buildPageView(controller,list,7)
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmoothPageIndicator(
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
                    SizedBox(
                      width: 60,
                    )
                  ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
              child: buildGreenContainer(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 0, 10, 0),
              child: Row(
                children: [
                  buildText('Feature Properties'),
                  Spacer(),
                  buildShowAll()
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
              child: buildGreenContainer(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 0, 10, 0),
              child: Row(
                children: [
                  buildText('Mega Projects'),
                  Spacer(),
                  buildShowAll()
                ],
              ),
            ),
            Padding(
              padding:const EdgeInsets.fromLTRB(17, 0, 0, 0),
              child: Container(
                height: 220,
                child: buildListView(megaList,4,8),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
              child:buildGreenContainer(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 0, 10, 0),
              child: Row(
                children: [
                  buildText('Our Agencies'),
                  Spacer(),
                  buildShowAll()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 0, 10, 0),
              child: Container(
                height:118,
                child:buildPageView(controller1,buildAgenciesList,3)

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
      bottomNavigationBar: ConvexAppBar(
        color: Style().whitColor,
        backgroundColor: Style().blueColor,
    activeColor: Style().greenColor,
    height: 57,
        style: TabStyle.reactCircle,
    items: [
    TabItem(
        icon: SvgPicture.asset('assets/icons/search.svg',
          fit: BoxFit.scaleDown,),
        title: ''),
      TabItem(
          icon: SvgPicture.asset('assets/icons/person.svg',
            fit: BoxFit.scaleDown,),
          title: ''),
      TabItem(
          icon: SvgPicture.asset(
            'assets/icons/Logo.svg',
            height: 2,
          width: 2,
            fit: BoxFit.scaleDown,
    ),
          title: ''),
      TabItem(
          icon: SvgPicture.asset(
            'assets/icons/phone_bar.svg',
              fit: BoxFit.scaleDown,),
          title: ''),
      TabItem(
          icon: SvgPicture.asset(
            'assets/icons/profile.svg',
            fit: BoxFit.scaleDown,
            height: 2,
            width: 2,
          ),
          title: ''
      ),
    ],
    initialActiveIndex: 2,//optional, default as 0
    onTap: (int i) {},
    ),
    );
  }


}

