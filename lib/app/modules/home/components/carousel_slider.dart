import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:herbcalm/app/data/models/carousel_model.dart';

class CarouselSliderView extends StatefulWidget {
  const CarouselSliderView({Key? key}) : super(key: key);

  @override
  _CarouselSliderViewState createState() => _CarouselSliderViewState();
}

class _CarouselSliderViewState extends State<CarouselSliderView> {
  List<CarouselImageList> imagesBanner = [
    CarouselImageList(imagePath: 'assets/images/banner/banner1.webp'),
    CarouselImageList(imagePath: 'assets/images/banner/banner2.webp'),
    CarouselImageList(imagePath: 'assets/images/banner/banner3.webp'),
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: imagesBanner.map((image) {
        return Builder(
          builder: (BuildContext context) {
            return Card(
              elevation: 5,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  image.imagePath,
                  fit: BoxFit.fill,
                ),
              ),
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        aspectRatio: 2,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.2,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
