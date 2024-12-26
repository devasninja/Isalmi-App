import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami/tabs/hadith/hadith_tab.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/radio/radio_tab.dart';
import 'package:islami/tabs/sebha/sebha_tab.dart';
import 'package:islami/tabs/time/time_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int curentIndex = 0;
  List<Widget> tabs = [
    const QuranTab(),
    const HadithTab(),
    const SebhaTab(),
    const RadioTab(),
    const TimeTab(),
  ];
  List<String> backgroundImagesNames = [
    'quran_background.png',
    'hadith_background.png',
    'sebha_background.png',
    'radio_background.png',
    'time_background.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'assets/images/${backgroundImagesNames[curentIndex]}',
            ),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Image.asset(
                'assets/images/header_logo.png',
                height: MediaQuery.sizeOf(context).height * (171 / 852),
              ),
            ),
            Expanded(child: tabs[curentIndex]),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curentIndex,
        onTap: (index) {
          curentIndex = index;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/quraan.svg'),
            activeIcon: SvgPicture.asset(
              'assets/icons/quraan.svg',
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/hadith.svg'),
            activeIcon: SvgPicture.asset(
              'assets/icons/hadith.svg',
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            label: 'Hadith',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/sbha.svg'),
            activeIcon: SvgPicture.asset(
              'assets/icons/sbha.svg',
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            label: 'Sebha',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/radio.svg'),
            activeIcon: SvgPicture.asset(
              'assets/icons/radio.svg',
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/time.svg'),
            activeIcon: SvgPicture.asset(
              'assets/icons/time.svg',
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            label: 'Hadith',
          ),
        ],
      ),
    );
  }
}
