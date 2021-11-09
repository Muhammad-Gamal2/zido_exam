import 'dart:ui';

class Ad {
  const Ad(
      {required this.id,
      required this.bgColor,
      required this.buttonColor,
      required this.textColor,
      required this.buttonTextColor,
      required this.title,
      required this.subtitle,
      required this.button,
      required this.image});

  final int id;
  final Color bgColor;
  final Color buttonColor;
  final Color textColor;
  final Color buttonTextColor;
  final String title;
  final String subtitle;
  final String button;
  final String image;
}
