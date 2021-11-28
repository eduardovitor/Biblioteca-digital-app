import 'package:flutter/material.dart';
import 'package:app_biblioteca_digital/presentation_slides/slides/slide1.dart';
import 'package:app_biblioteca_digital/presentation_slides/slides/slide2.dart';
import 'package:app_biblioteca_digital/presentation_slides/slides/slide3.dart';
import 'package:app_biblioteca_digital/presentation_slides/slides/slide4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);
  @override
  _StartPageState createState() => _StartPageState();
}

final slideList = [Slide1(), Slide2(), Slide3(), Slide4()];
int _currentPage = 0;

class _StartPageState extends State<StartPage> {
  final PageController _pagecontroller = PageController(initialPage: 0);

  onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
          child: PageView.builder(
              itemCount: slideList.length,
              controller: _pagecontroller,
              onPageChanged: onPageChanged,
              itemBuilder: (ctx, i) => slideList[i])),
      buildDotIndicator(),
    ]));
  }
}

Widget buildDotIndicator() =>
    AnimatedSmoothIndicator(activeIndex: _currentPage, count: slideList.length);
