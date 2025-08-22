// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get_connect/http/src/utils/utils.dart';

// class ReviewAndRating extends StatelessWidget {
//   const ReviewAndRating({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: Text(
//               "Reviews and Ratings",
//               style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
//             ),
//           ),
//           Container(height: .5.h, color: Color(0xFF979797)),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
//             child: Center(
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       ...List.generate(5, (int i) {
//                         return Icon(Icons.star, color: Colors.yellow, size: 40);
//                       }),
//                     ],
//                   ),
//                   SizedBox(height: 10),
//                   RichText(
//                     text: TextSpan(
//                       children: [
//                         TextSpan(
//                           text: "4.9",
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         TextSpan(
//                           text: "  93 reviews",
//                           style: TextStyle(
//                             fontSize: 12,
//                             color: Color(0xFF8F9BB3),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 15),
//                   rating(num: 5, width: .99),
//                   SizedBox(height: 10),
//                   rating(num: 4, width: 0),
//                   SizedBox(height: 10),
//                   rating(num: 3, width: .01),
//                   SizedBox(height: 10),
//                   rating(num: 2, width: 0),
//                   SizedBox(height: 10),
//                   rating(num: 1, width: 0),
//                 ],
//               ),
//             ),
//           ),
//           Container(height: .5.h, color: Color(0xFF979797)),
//           Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: Column(
//               children: [
//                 rewiew(
//                   imageName: "Rectangle",
//                   name: "Georgie Johnston",
//                   comment:
//                       "What a great concept and value.  I have wasted weeks trying interviewing.",
//                 ),
//                 Container(height: .5.h, color: Color(0xFF979797)),
//                 SizedBox(height: 5),
//                 rewiew(
//                   imageName: "Rectangle (1)",
//                   name: "Louise Davis",
//                   comment:
//                       "Super easy to work with and get connected to a professional. My lawn looks awesome now!",
//                 ),
//                 Container(height: .5.h, color: Color(0xFF979797)),
//                 SizedBox(height: 5),

//                 rewiew(
//                   imageName: "Rectangle (2)",
//                   name: "Rose Kelley",
//                   comment: "Great!! \n I'll booking next time.",
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Widget rating({required int num, required double width}) {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Text(num.toString()),
//       Icon(Icons.star, color: Colors.yellow),
//       SizedBox(width: 10),
//       Container(
//         width: 180.w,
//         height: 8.h,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5),
//           color: Color(0xFFF0F3F8),
//         ),
//         child: Stack(
//           children: [
//             FractionallySizedBox(
//               widthFactor: width,
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(3.5),
//                   color: Colors.yellow,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       SizedBox(width: 10),
//       Text(
//         '${(width * 100).toString()}%',
//         style: TextStyle(color: Color(0xFF8F9BB3)),
//       ),
//     ],
//   );
// }

// Widget rewiew({
//   required String imageName,
//   required String name,
//   required String comment,
// }) {
//   return SizedBox(
//     width: 311,
//     height: 220.h,
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           children: [
//             CircleAvatar(
//               radius: 30,
//               child: Image.asset("assets/images/vendor_details/$imageName.png"),
//             ),
//             SizedBox(width: 10),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(name, style: TextStyle(fontWeight: FontWeight.w600)),
//                 SizedBox(height: 3),
//                 Text(
//                   "Lawn Mowing and Trimming",
//                   style: TextStyle(color: Color(0xFF8F9BB3)),
//                 ),
//                 SizedBox(height: 3),
//                 Row(
//                   children: [
//                     ...List.generate(5, (int i) {
//                       return Icon(
//                         Icons.star,
//                         color: Colors.yellow[500],
//                         size: 16,
//                       );
//                     }),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//         SizedBox(height: 10),
//         Text(comment),
//         SizedBox(height: 10),
//         Container(
//           alignment: Alignment.centerRight,
//           child: Text(
//             "Jan 24, 2020",

//             style: TextStyle(color: Color(0xFF8F9BB3)),
//           ),
//         ),
//       ],
//     ),
//   );
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewAndRating extends StatelessWidget {
  const ReviewAndRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(15.w),
            child: Text(
              "Reviews and Ratings",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
            ),
          ),
          Container(height: 0.5.h, color: const Color(0xFF979797)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
            child: Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      5,
                      (_) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 24.r,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "4.9",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "  93 reviews",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: const Color(0xFF8F9BB3),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h),

                  // Rating rows
                  rating(num: 5, value: 0.99),
                  SizedBox(height: 10.h),
                  rating(num: 4, value: 0.00),
                  SizedBox(height: 10.h),
                  rating(num: 3, value: 0.01),
                  SizedBox(height: 10.h),
                  rating(num: 2, value: 0.00),
                  SizedBox(height: 10.h),
                  rating(num: 1, value: 0.00),
                ],
              ),
            ),
          ),
          Container(height: 0.5.h, color: const Color(0xFF979797)),
          Padding(
            padding: EdgeInsets.all(15.w),
            child: Column(
              children: [
                review(
                  imageName: "Rectangle",
                  name: "Georgie Johnston",
                  comment:
                      "What a great concept and value. I have wasted weeks trying interviewing.",
                ),
                Container(height: 0.5.h, color: const Color(0xFF979797)),
                SizedBox(height: 8.h),
                review(
                  imageName: "Rectangle (1)",
                  name: "Louise Davis",
                  comment:
                      "Super easy to work with and get connected to a professional. My lawn looks awesome now!",
                ),
                Container(height: 0.5.h, color: const Color(0xFF979797)),
                SizedBox(height: 8.h),
                review(
                  imageName: "Rectangle (2)",
                  name: "Rose Kelley",
                  comment: "Great!! \nI'll be booking next time.",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// `value` should be in [0..1]
Widget rating({required int num, required double value}) {
  final clamped = value.clamp(0.0, 1.0);
  final percent = (clamped * 100).toStringAsFixed(0);

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(num.toString(), style: TextStyle(fontSize: 12.sp)),
      SizedBox(width: 6.w),
      Icon(Icons.star, color: Colors.yellow, size: 16.r),
      SizedBox(width: 10.w),

      // Progress bar with bounded size
      SizedBox(
        width: 180.w,
        height: 8.h,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.r),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(color: const Color(0xFFF0F3F8)),
              FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: clamped,
                child: Container(color: Colors.yellow),
              ),
            ],
          ),
        ),
      ),
      SizedBox(width: 10.w),
      Text(
        '$percent%',
        style: TextStyle(color: const Color(0xFF8F9BB3), fontSize: 12.sp),
      ),
    ],
  );
}

Widget review({
  required String imageName,
  required String name,
  required String comment,
}) {
  return SizedBox(
    width: 311.w,
    // Let height adapt to text; avoid hard-coding height
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 30.r,
              backgroundColor: Colors.transparent,
              child: Image.asset(
                "assets/images/vendor_details/$imageName.png",
                width: 60.r,
                height: 60.r,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(height: 3.h),
                Text(
                  "Lawn Mowing and Trimming",
                  style: TextStyle(
                    color: const Color(0xFF8F9BB3),
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(height: 3.h),
                Row(
                  children: List.generate(
                    5,
                    (_) => Padding(
                      padding: EdgeInsets.only(right: 2.w),
                      child: Icon(
                        Icons.star,
                        color: Colors.yellow[700],
                        size: 16.r,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Text(comment, style: TextStyle(fontSize: 13.sp, height: 1.3)),
        SizedBox(height: 10.h),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Jan 24, 2020",
            style: TextStyle(color: const Color(0xFF8F9BB3), fontSize: 12.sp),
          ),
        ),
      ],
    ),
  );
}
