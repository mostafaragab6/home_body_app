import 'package:flutter/material.dart';

class Constants {
  static const List<String> images = [
    'assets/imgs/on_boarding1.jpg',
    'assets/imgs/on_boarding2.jpg',
    'assets/imgs/on_boarding3.jpg',
  ];

  static const List<String> title = [
    'Your Fitness Journey Starts Here',
    'Your Trainer, One Tap Away',
    'Train Like Never Before',
  ];

  static const List<String> supTitle = [
    'Find the right trainer and reach your goals',
    'Book personalized sessions anytime, anywhere.',
    'Smart coaching, right in your pocket.',
  ];

  static PageController pageController = PageController();
  static int currentIndex = 0;
}
