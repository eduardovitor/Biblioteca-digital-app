// import 'package:app_biblioteca_digital/presentation_slides/slides/slide1.dart';
// import 'package:app_biblioteca_digital/presentation_slides/slides/slide2.dart';
// import 'package:app_biblioteca_digital/presentation_slides/slides/slide3.dart';
// import 'package:app_biblioteca_digital/presentation_slides/slides/slide4.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// class Presentation extends StatefulWidget {
//   const Presentation({Key? key}) : super(key: key);

//   @override
//   _PresentationState createState() => _PresentationState();
// }

// int _currentIndex = 0;
// List cardList = [Slide1(), Slide2(), Slide3(), Slide4()];
// List<T> map<T>(List list, Function handler) {
//   List<T> result = [];
//   for (var i = 0; i < list.length; i++) {
//     result.add(handler(i, list[i]));
//   }
//   return result;
// }

// class _PresentationState extends State<Presentation> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//       children: <Widget>[
//         CarouselSlider(
//             items: cardList.map((card) {
//               return Builder(builder: (BuildContext context) {
//                 return Container(
//                   height: MediaQuery.of(context).size.height * 0.30,
//                   width: MediaQuery.of(context).size.width,
//                   child: Card(
//                     color: Colors.blueAccent,
//                     child: card,
//                   ),
//                 );
//               });
//             }).toList(),
//             options: CarouselOptions(
//               height: 200.0,
//               autoPlay: true,
//               autoPlayInterval: Duration(seconds: 3),
//               autoPlayAnimationDuration: Duration(milliseconds: 800),
//               autoPlayCurve: Curves.fastOutSlowIn,
//               pauseAutoPlayOnTouch: true,
//               aspectRatio: 2.0,
//               onPageChanged: (index, reason) {
//                 setState(() {
//                   _currentIndex = index;
//                 });
//               },
//             )),
//         buildRowSlides()
//       ],
//     ));
//   }
// }

// buildRowSlides() {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: map<Widget>(cardList, (index, url) {
//       return Container(
//         width: 10.0,
//         height: 10.0,
//         margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: _currentIndex == index ? Colors.blueAccent : Colors.grey,
//         ),
//       );
//     }),
//   );
// }
