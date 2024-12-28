import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/intro_screen/intro_screen_items.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});
  static const String routeName = 'intro_screen';

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final controller = IntroScreenItems();
  final pageController = PageController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.black,
      bottomSheet: Container(
        color: AppTheme.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () => pageController.previousPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn),
              child: const Text(
                'Back',
                style: TextStyle(color: AppTheme.primary),
              ),
            ),
            SmoothPageIndicator(
              controller: pageController,
              count: controller.items.length,
              onDotClicked: (index) {
                pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                );
              },
              effect: const ExpandingDotsEffect(
                dotColor: Color(0xff707070),
                activeDotColor: AppTheme.primary,
                dotHeight: 7,
                dotWidth: 7,
                spacing: 11,
              ),
            ),
            TextButton(
              onPressed: () {
                if (currentPage == controller.items.length - 1) {
                  Navigator.pushNamed(context, 'home_screen');
                } else {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                }
              },
              child: Text(
                currentPage == controller.items.length - 1 ? 'Finish' : 'Next',
                style: const TextStyle(color: AppTheme.primary),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 13),
        child: PageView.builder(
          itemCount: controller.items.length,
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              currentPage = index;
            });
          },
          itemBuilder: (context, index) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 40,
                child: Image.asset(
                  'assets/images/header_logo.png',
                ),
              ),
              Expanded(
                flex: 60,
                child: Image.asset(controller.items[index].image),
              ),
              Expanded(
                flex: 10,
                child: Text(
                  controller.items[index].title,
                  style: const TextStyle(
                      fontSize: 24,
                      fontFamily: 'JannaLT',
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primary),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                flex: 22,
                child: Text(
                  controller.items[index].description ?? '',
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primary,
                      fontFamily: 'JannaLT'),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // void _onFinish() {
  //   Navigator.pushNamed(context, 'home_screen');
  // }
}
