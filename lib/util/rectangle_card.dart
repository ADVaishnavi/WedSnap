import 'package:flutter/material.dart';

class RectangleCard extends StatelessWidget {
  final String categoryName;

  const RectangleCard(
      {super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle tap action here
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Circular container with an icon
            Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.pinkAccent.withOpacity(0.2),
              ),
            ),
            const SizedBox(height: 8.0), // Spacing between icon and text
            // Category name
            // Text(
            //   categoryName,
            //   textAlign: TextAlign.center,
            //   style: const TextStyle(
            //     fontSize: 10.0,
            //     fontWeight: FontWeight.w600,
            //     color: Colors.black87,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
