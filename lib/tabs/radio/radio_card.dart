import 'package:flutter/material.dart';

class RadioCard extends StatelessWidget {
  const RadioCard({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return // Radio card widget
        Card(
      color: const Color(0xffE2BE7F),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.play_circle_fill,
                    size: 32.0, color: Colors.black),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      height: 4.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Icon(Icons.volume_up, size: 32.0, color: Colors.black),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
