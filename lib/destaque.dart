import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Destaque extends StatefulWidget {
  const Destaque({Key? key}) : super(key: key);

  @override
  _DestaqueState createState() => _DestaqueState();
}

class _DestaqueState extends State<Destaque> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 20),
      Padding(
          padding: EdgeInsets.all(16),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text('Top escolhidos',
                  style: GoogleFonts.carterOne(
                      textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold))))),
      const SizedBox(height: 40),
      CarouselSlider(
          items: [
            InkWell(
              child: Image.network(
                  "https://images-na.ssl-images-amazon.com/images/I/71K0ACNXURL.jpg"),
            ),
            InkWell(
                child: Image.network(
                    'https://m.media-amazon.com/images/I/51nK9MO0G4L.jpg')),
            InkWell(
              child: Image.network(
                  'https://images-na.ssl-images-amazon.com/images/I/51zoZfvbQhL._SX342_SY445_QL70_ML2_.jpg'),
            )
          ],
          options: CarouselOptions(
              height: 200,
              autoPlay: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: false,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8))
    ]);
  }
}
