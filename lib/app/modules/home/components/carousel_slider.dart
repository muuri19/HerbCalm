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
    CarouselImageList(
        imagePath:
            'https://firebasestorage.googleapis.com/v0/b/herbcalm-9227b.appspot.com/o/assets%2FHomePage%2FMenuObatHerbal%2FBanner%2Fbanner1.webp?alt=media&token=823a4a3a-fa28-4b83-834e-88a6c64a1b15'),
    CarouselImageList(
        imagePath:
            'https://firebasestorage.googleapis.com/v0/b/herbcalm-9227b.appspot.com/o/assets%2FHomePage%2FMenuObatHerbal%2FBanner%2Fbanner2.webp?alt=media&token=a761dfd9-5566-4676-9bcd-55ccef78c78b'),
    CarouselImageList(
        imagePath:
            'https://firebasestorage.googleapis.com/v0/b/herbcalm-9227b.appspot.com/o/assets%2FHomePage%2FMenuObatHerbal%2FBanner%2Fbanner3.webp?alt=media&token=d4599a19-e995-4ecc-a34d-7550ba98fc70'),
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
                child: Image.network(
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
