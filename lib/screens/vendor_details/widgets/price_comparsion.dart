import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceComparsion extends StatelessWidget {
  const PriceComparsion({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Price Comparison",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
          Container(height: .5.h, color: Color(0xFF979797)),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Here's how this pro's prices compare to the average cost in your area.",
                  style: TextStyle(color: Color(0xFF8F9BB3), fontSize: 14.sp),
                ),
                SizedBox(height: 12),
                Text("Starting cost"),
                SizedBox(height: 8),
                cost(width: .45, title: "This pro"),
                SizedBox(height: 8),
                cost(width: .6, title: "Avg Pro"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget cost({required double width, required String title}) {
  return Row(
    children: [
      CircleAvatar(
        radius: 30,
        child: Image.asset("assets/images/vendor_details/Avatar.png"),
      ),

      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(color: Color(0xFF979797))),
              SizedBox(height: 4),
              Container(
                height: 25,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Color(0xFFF2F8FF),
                ),
                child: Stack(
                  children: [
                    FractionallySizedBox(
                      widthFactor: width,
                      child: Container(
                        height: 25,
                        decoration: BoxDecoration(
                          color: Color(0xFF007AFF),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 5,
                      top: 3,
                      child: Text(
                        "\$${width * 100}",
                        style: TextStyle(
                          color: Color(0xFF007AFF),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
