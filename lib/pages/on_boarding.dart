import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<Map<String, String>> boardingData = [
    {
      'image': "assets/onBoarding/B1.png",
      'text': "data",
    },
    {
      'image': "assets/onBoarding/B2.png",
      'text': "data1",
    },
    {
      'image': "assets/onBoarding/B3.png",
      'text': "data2",
    },
    {
      'image': "assets/onBoarding/B4.png",
      'text': "data3",
    },
    {
      'image': "assets/onBoarding/B5.png",
      'text': "data4",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.amber,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: PageView.builder(
                    itemCount: boardingData.length,
                    itemBuilder: (context, index) => ContainerBoarding(
                      image: boardingData[index]['image']!,
                      text: boardingData[index]['text']!,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerBoarding extends StatelessWidget {
  final String image;
  final String text;

  const ContainerBoarding({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        Text(text),
      ],
    );
  }
}
