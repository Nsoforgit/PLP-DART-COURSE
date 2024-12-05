// screens/home_screen.dart
import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/welcome_message.dart';
import '../constants/app_colors.dart';
import 'dart:async'; // Import for Timer
import 'package:logger/logger.dart';

// Create a logger instance
final Logger logger = Logger();

class CoolInteractiveButton extends StatelessWidget {
  const CoolInteractiveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        logger.i('Button Clicked! You are awesome! 🚀'); // Use logger instead of print
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Welcome to the Month of December 💡'),
            backgroundColor: Colors.deepPurple,
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: AppColors.accentColor,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 5,
      ),
      child: const Text(
        'Click Me & Discover! 🌟',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  late Timer _timer;
  String _currentImageUrl = '';

  @override
  void initState() {
    super.initState();
    _fetchNewImage(); // Fetch the first image immediately
    _startImageChangeTimer();
  }

  void _startImageChangeTimer() {
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      _fetchNewImage();
    });
  }

  Future<void> _fetchNewImage() async {
    // Generate a new image URL
    final newImageUrl = 'https://picsum.photos/300/200?random=${DateTime.now().millisecondsSinceEpoch}';
    setState(() {
      _currentImageUrl = newImageUrl;
    });
    logger.i('Fetched new image: $newImageUrl');
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Flutter UI Challenge'),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const WelcomeMessage(),
              const SizedBox(height: 30),
              _currentImageUrl.isNotEmpty
                ? Image.network(
                    _currentImageUrl,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      );
                    },
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.error_outline, size: 100),
                  )
                : const CircularProgressIndicator(), // Show a loading indicator initially
              const SizedBox(height: 30),
              const CoolInteractiveButton(),
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.backgroundColor,
    );
  }
}