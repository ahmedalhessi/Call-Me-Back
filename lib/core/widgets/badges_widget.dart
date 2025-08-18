import 'package:flutter/material.dart';
import '../constants/text_styles_manager.dart';

class BadgeWidget extends StatelessWidget {
  final String text;
  final Color color;

  const BadgeWidget({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only( right: 5, top: 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStylesManager.captionRegularWhite,
        textAlign: TextAlign.center,
      ),
    );
  }
}
