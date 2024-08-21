// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:curousel_slider_sample/photos.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SliderPage(),
    );
  }
}

class SliderPage extends StatelessWidget {
  SliderPage({super.key});

  List allPhtots = [
    photo1,
    photo2,
    photo3,
    photo4,
    photo5,
    photo6,
    photo7,
    photo8,
    photo9
  ];

  List flowers = [
    cur1,
    cur2,
    cur3,
    cur5,
    cur6,
    cur7,
  ];

  List cur2Photos = [
    phot1,
    phot2,
    phot3,
    phot4,
    phot5,
    phot6,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Text('Welcome to Carousel World'),
            CarouselSlider(
              options: CarouselOptions(height: 200.0, autoPlay: true),
              items: [0, 1, 2, 3, 4, 5, 6, 7, 8].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: const BoxDecoration(color: Colors.amber),
                        child: Image(
                          image: AssetImage(allPhtots[i]),
                          fit: BoxFit.cover,
                        ));
                  },
                );
              }).toList(),
            ),
            const SizedBox(
              height: 30,
            ),
            CarouselSlider(
              options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  scrollPhysics: const ScrollPhysics()),
              items: [0, 1, 2, 3].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: const BoxDecoration(color: Colors.amber),
                        child: Image(
                          image: AssetImage(cur2Photos[i]),
                          fit: BoxFit.cover,
                        ));
                  },
                );
              }).toList(),
            ),
            const SizedBox(
              height: 30,
            ),
            CarouselSlider(
              options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  scrollPhysics: const ScrollPhysics()),
              items: [0, 1, 2, 3, 4].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: const BoxDecoration(color: Colors.amber),
                      child: Image(
                        image: AssetImage(flowers[i]),
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
