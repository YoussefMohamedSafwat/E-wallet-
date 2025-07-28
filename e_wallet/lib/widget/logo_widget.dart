import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,

        children: [
          Positioned(
            child: Transform.rotate(
              angle: -0.15,
              origin: const Offset(-40, -20),
              child: Container(
                width: 105,
                height: 45,
                decoration: BoxDecoration(
                  color: const  Color(0xFFFFAE58),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Transform.rotate(
            angle: -0.15,
            child: Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                color: const  Color(0xFF4CD080),
                borderRadius: BorderRadius.circular(12),
              ),
              alignment: Alignment.center,
              child: const  Text(
                'Wpay',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
