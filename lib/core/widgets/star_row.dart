import 'package:flutter/material.dart';
class StarRow extends StatelessWidget {
  const StarRow({
    super.key,
    required this.rating,
    this.size = 14,
    this.color = const Color(0xFFFFCF00),
    this.gap = 2,
  });

  final double rating;
  final double size;
  final Color color;
  final double gap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (i) {
        final index = i + 1;
        IconData icon;
        if (rating >= index) {
          icon = Icons.star;
        } else if (rating >= index - 0.5) {
          icon = Icons.star_half;
        } else {
          icon = Icons.star_border;
        }
        return Padding(
          padding: EdgeInsets.only(right: i == 4 ? 0 : gap),
          child: Icon(icon, size: size, color: color),
        );
      }),
    );
  }
}