// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class PhotoAndVideo extends StatelessWidget {
//   const PhotoAndVideo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: Text(
//               "Photos and Videos",
//               style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
//             ),
//           ),
//           Container(height: .5.h, color: Color(0xFF979797)),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
//             child: Row(
//               children: [
//                 imageItem(height: 158, width: 227, imageName: "1"),
//                 SizedBox(width: 10.w),
//                 Column(
//                   children: [
//                     imageItem(height: 70.h, width: 80.w, imageName: "2"),
//                     SizedBox(height: 14.h),
//                     imageItem(height: 70.h, width: 80.w, imageName: "3"),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Widget imageItem({
//   required double height,
//   required double width,
//   required String imageName,
// }) {
//   return Container(
//     height: height,
//     width: width,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(10),
//       image: DecorationImage(
//         image: AssetImage("assets/images/vendor_details/$imageName.png"),
//         fit: BoxFit.cover,
//         onError: (exception, stackTrace) {
//           print("Error loading image: $exception");
//         },
//       ),
//     ),
//   );
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhotoAndVideo extends StatelessWidget {
  const PhotoAndVideo({super.key});

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
              "Photos and Videos",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
            ),
          ),
          Container(height: 0.5.h, color: const Color(0xFF979797)),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left big image
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    height: 158.h,
                    child: imageItem(imageName: "1", radius: 10.r),
                  ),
                ),
                //SizedBox(width: 5.w),

                // Right column (two small images)
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 70.h,
                        child: imageItem(imageName: "2", radius: 10.r),
                      ),
                      SizedBox(height: 14.h),
                      SizedBox(
                        height: 70.h,
                        child: imageItem(imageName: "3", radius: 10.r),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Responsive image tile with rounded corners
Widget imageItem({required String imageName, double radius = 10}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(radius),
    child: Image.asset(
      "assets/images/vendor_details/$imageName.png",
      fit: BoxFit.cover,
      errorBuilder: (context, error, stack) {
        // Fallback UI if asset missing
        return Container(
          color: const Color(0xFFF0F3F8),
          alignment: Alignment.center,
          child: Icon(
            Icons.broken_image_outlined,
            size: 24.r,
            color: Colors.grey,
          ),
        );
      },
    ),
  );
}
