import 'package:flutter/material.dart';

class RadioHeaderButtons extends StatelessWidget {
  final String title;
  final bool isSelected;
  const RadioHeaderButtons(
      {super.key, required this.title, required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff202020).withOpacity(0.7),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: isSelected
                ? const Color(0xffE2BE7F)
                : const Color(0xff202020).withOpacity(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(
                style: BorderStyle.none,
              ),
            ),
          ),
          onPressed: () {},
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  color: isSelected ? const Color(0xff202020) : Colors.white,
                  fontSize: 16,
                  height: 2),
            ),
          ),
        ),
      ),
    );
  }
}
