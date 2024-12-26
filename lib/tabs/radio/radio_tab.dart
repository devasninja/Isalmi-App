import 'package:flutter/material.dart';
import 'package:islami/tabs/radio/radio_card.dart';
import 'package:islami/tabs/radio/radio_header_buttons.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RadioHeaderButtons(title: 'Radio', isSelected: true),
                  RadioHeaderButtons(title: 'Reciters', isSelected: false),
                ],
              ),
              Expanded(
                child: ListView(
                  children: const [
                    RadioCard(title: 'Radio Ibrahim Al-Akdar'),
                    RadioCard(title: 'Radio Al-Qaria Yassen'),
                    RadioCard(title: 'Radio Ahmed Al-Trabulsi'),
                    RadioCard(title: 'Radio Addokali Mohammad Alalim'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Tab button widget
}
