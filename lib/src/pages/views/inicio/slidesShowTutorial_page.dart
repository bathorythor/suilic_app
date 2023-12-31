import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:suilic_app/src/infrastructure/models/slider_model.dart';

class SlidesShowTutorialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new SliderModel(),
      child: Scaffold(
          body: Center(
              child: Column(
        children: <Widget>[
          Expanded(child: _slides()),
          _Dots(),
        ],
      ))),
    );
  }
}

class _Dots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _Dot(0),
          _Dot(1),
          _Dot(2),
        ],
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  final int index;
  _Dot(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
    );
  }
}

class _slides extends StatefulWidget {
  @override
  State<_slides> createState() => _slidesState();
}

class _slidesState extends State<_slides> {
  final pageViewController = new PageController();

  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() {
      //Actualizar provider, slidermodel
      print('Pagina actual: ${pageViewController.page}');
      //  Provider.of<SliderModel>(context, listen: false).currentPage =
      //     pageViewController.page;
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        controller: pageViewController,
        children: <Widget>[
          _Slide('assets/imagenes/svgs/slide-1.svg'),
          _Slide('assets/imagenes/svgs/slide-2.svg'),
          _Slide('assets/imagenes/svgs/slide-3.svg'),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String svg;

  _Slide(this.svg);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(30),
      child: SvgPicture.asset(svg),
    );
  }
}
