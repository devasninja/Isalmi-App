import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  int index = 0;
  double angelRotate = 0;
  List<String> zekr = [
    'سبحان الله',
    'الحمد لله',
    'الله أكبر',
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: const EdgeInsets.all(26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            // alignment: Alignment.center,
            children: [
              const Center(
                child: Text(
                  'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                left: MediaQuery.sizeOf(context).width * 0.3724,
                top: MediaQuery.sizeOf(context).height * 0.1,
                child: Image.asset(
                  'assets/images/Mask group.png',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * (160 / 852),
                ),
                child: GestureDetector(
                  onTap: onTap,
                  child: Transform.rotate(
                    angle: angelRotate,
                    child: Image.asset(
                      'assets/images/SebhaBody 1.png',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * (151 / 460),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        zekr[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '$counter',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  onTap() {
    counter++;

    if (counter % 33 == 0) {
      index++;
    }

    if (index == zekr.length) {
      index = 0;
    }

    angelRotate += 360 / 33;
    setState(() {});
  }
}
