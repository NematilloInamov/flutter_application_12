import 'dart:developer';

import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              GusronContenerWedget(
                text2: '20',
                text4: '21',
                text5: '22',
                text6: '23',
                widtg: 100,
                height: 6000,
              ),
              SizedBox(
                width: 20,
              ),
              GusronContenerWedget(
                text2: '13',
                text4: '10',
                text5: '11',
                text6: '12',
                widtg: 200,
                height: 400,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class GusronContenerWedget extends StatelessWidget {
  const GusronContenerWedget(
      {super.key,
      this.text2,
      this.text4,
      this.text5,
      this.text6,
      this.height,
      this.widtg,
      this.onTap});
  final String? text2;
  final String? text6;
  final String? text5;
  final String? text4;
  final double? height;
  final double? widtg;
  final Function? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widtg,
      height: 200,
      color: Colors.yellow,
      child: Column(
        children: [
          Text('data$text2'),
          Text('data$text4'),
          Text('data$text5'),
          Text('data$text6'),
          Text('data9'),
          GestureDetector(
              onTap: () {
                log('o9ikkk$onTap');
              },
              child: Icon(Icons.favorite))
        ],
      ),
    );
  }
}
