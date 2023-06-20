import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class TutoarialSlidesShow extends StatefulWidget {
  const TutoarialSlidesShow({super.key});

  @override
  State<TutoarialSlidesShow> createState() => _TutoarialSlidesShowState();
}

// return Image.asset(
//               "assets/imagenes/Logo.jpg",
// pagination: SwiperPagination(),
// control: SwiperControl(),

class _TutoarialSlidesShowState extends State<TutoarialSlidesShow> {
  List<String> imagenes = [
    "assets/imagenes/svgs/slide-1.png",
    "assets/imagenes/svgs/slide-2.png",
    "assets/imagenes/svgs/slide-3.png",
    "assets/imagenes/svgs/slide-4.png",
    "assets/imagenes/svgs/slide-5.png",
    "assets/imagenes/svgs/slide-6.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            imagenes[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: 6,
        viewportFraction: 0.99,
        scale: 0.10,
        pagination: SwiperPagination(),
        control: SwiperControl(),
      ),
    );
  }
}
