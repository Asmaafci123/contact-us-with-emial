import 'custom_widgets.dart';
import 'package:flutter/material.dart';

import 'listview.dart';
List<Widget> agenciesList = [
  buildAgencyItem('assets/images/image 4.png'),
  buildAgencyItem('assets/images/image 5.png'),
  buildAgencyItem('assets/images/image 6.png'),
];
List<Widget> buildAgenciesList = [
  Container(
         height:118,
         child: buildListView(agenciesList,3,5)
         ),
  Container(
      height:118,
      child: buildListView(agenciesList,3,5)
  ),
  Container(
      height:118,
      child: buildListView(agenciesList,3,5)
  ),
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