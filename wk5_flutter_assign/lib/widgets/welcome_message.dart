// widgets/welcome_message.dart
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.primaryColor.withOpacity(0.7),
            AppColors.accentColor.withOpacity(0.5)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Text(
        "Welcome to Our Awesome App! 🌈 Let's connect",
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.w600,
          shadows: [
            Shadow(
              blurRadius: 10.0,
              color: Colors.black45,
              offset: Offset(2.0, 2.0),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}