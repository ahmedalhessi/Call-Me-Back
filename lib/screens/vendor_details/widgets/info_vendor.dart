// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class InfoVendor extends StatelessWidget {
//   const InfoVendor({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         SizedBox(
//           height:
//               MediaQuery.of(context).size.width / 1.6 +
//               240, // hero + card space
//           child: Stack(
//             alignment: Alignment.topCenter,
//             //fit: StackFit.expand,
//             children: <Widget>[
//               // Header image
//               ClipRRect(
//                 // borderRadius: const BorderRadius.only(
//                 //   bottomLeft: Radius.circular(28),
//                 //   bottomRight: Radius.circular(28),
//                 // ),
//                 child: AspectRatio(
//                   aspectRatio: 1.6,
//                   child: Image.asset(
//                     'assets/images/vendor_details/HeaderPhoto.png',
//                     // width: double.infinity,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),

//               // Top bar
//               Positioned(
//                 left: 12,
//                 //right: 12,
//                 top: 8,
//                 child: IconButton(
//                   onPressed: () {},
//                   icon: Icon(Icons.arrow_back, color: Colors.white),
//                 ),
//               ),

//               // Card body
//               Positioned.fill(
//                 top: MediaQuery.of(context).size.width / 1.6 - 20,
//                 child: Align(
//                   alignment: Alignment.topCenter,
//                   child: Material(
//                     borderRadius: BorderRadius.circular(28),
//                     color: Theme.of(context).colorScheme.surface,
//                     child: Container(
//                       width: double.infinity,
//                       padding: const EdgeInsets.fromLTRB(16, 64, 16, 20),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(28),
//                           topRight: Radius.circular(28),
//                         ),
//                         color: Theme.of(context).colorScheme.surface,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.04),
//                             blurRadius: 16,
//                             offset: const Offset(0, 8),
//                           ),
//                         ],
//                       ),
//                       child: const _ListingDetails(),
//                     ),
//                   ),
//                 ),
//               ),

//               // Overlapping profile image
//               Positioned(
//                 top: MediaQuery.of(context).size.width / 1.6 - 90,
//                 left: 0,
//                 right: 0,
//                 child: Center(
//                   child: Container(
//                     width: 112.w,
//                     height: 130.h,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       border: Border.all(color: Colors.white, width: 4),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.08),
//                           blurRadius: 16,
//                           offset: const Offset(0, 8),
//                         ),
//                       ],
//                       image: const DecorationImage(
//                         fit: BoxFit.cover,
//                         image: AssetImage(
//                           "assets/images/vendor_details/Avatar.png",
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),

//         // Rest of the content – no Expanded anywhere
//         const SizedBox(height: 8),
//       ],
//     );
//   }
// }

// class _ListingDetails extends StatelessWidget {
//   const _ListingDetails();

//   @override
//   Widget build(BuildContext context) {
//     final TextTheme text = Theme.of(context).textTheme;
//     final ColorScheme cs = Theme.of(context).colorScheme;

//     return Column(
//       children: <Widget>[
//         Text(
//           'Full Service Lawn Care',
//           textAlign: TextAlign.center,
//           style: text.headlineSmall?.copyWith(
//             fontWeight: FontWeight.w800,
//             color: cs.onSurface,
//           ),
//         ),
//         const SizedBox(height: 12),

//         // Rating + reviews
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ...List.generate(
//               5,
//               (int i) => const Icon(
//                 Icons.star_rounded,
//                 size: 22,
//                 color: Color(0xFFFFB300),
//               ),
//             ),
//             const SizedBox(width: 8),
//             Text(
//               '93 reviews',
//               style: text.titleMedium?.copyWith(
//                 color: Color(0xFF8F9BB3),
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(height: 12),

//         // Location
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Icon(Icons.location_on_outlined, size: 20, color: cs.primary),
//             const SizedBox(width: 6),
//             Text(
//               'Serves Phonix, Los Angeles',
//               style: text.titleMedium?.copyWith(color: cs.onSurface),
//             ),
//           ],
//         ),
//         const SizedBox(height: 16),

//         // Chips
//         const Wrap(
//           spacing: 10,
//           runSpacing: 10,
//           alignment: WrapAlignment.center,
//           children: <Widget>[
//             _PillChip(label: 'In High Demand'),
//             _PillChip(label: 'Discount Available', tint: Colors.purple),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class _PillChip extends StatelessWidget {
//   const _PillChip({required this.label, this.tint});

//   final String label;
//   final Color? tint;

//   @override
//   Widget build(BuildContext context) {
//     final ColorScheme cs = Theme.of(context).colorScheme;
//     final Color base = tint ?? cs.primary;

//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
//       decoration: BoxDecoration(
//         color: base.withOpacity(.7),
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(color: base.withOpacity(0.28)),
//       ),
//       child: Text(
//         label,
//         style: Theme.of(context).textTheme.labelLarge?.copyWith(
//           fontWeight: FontWeight.w700,
//           color: Colors.white,
//           fontSize: 16,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoVendor extends StatelessWidget {
  const InfoVendor({super.key});

  @override
  Widget build(BuildContext context) {
    final double headerHeight = MediaQuery.of(context).size.width / 1.6;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: headerHeight + 240.h, // header + card space
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              // Header image
              ClipRRect(
                child: AspectRatio(
                  aspectRatio: 1.6,
                  child: Image.asset(
                    'assets/images/vendor_details/HeaderPhoto.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Back button
              Positioned(
                left: 12.w,
                top: 8.h,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back, color: Colors.white, size: 22.r),
                ),
              ),

              // Card body
              Positioned.fill(
                top: headerHeight - 20.h,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Material(
                    borderRadius: BorderRadius.circular(28.r),
                    color: Theme.of(context).colorScheme.surface,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.fromLTRB(16.w, 64.h, 16.w, 20.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(28.r),
                          topRight: Radius.circular(28.r),
                        ),
                        color: Theme.of(context).colorScheme.surface,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.04),
                            blurRadius: 16.r,
                            offset: Offset(0, 8.h),
                          ),
                        ],
                      ),
                      child: const _ListingDetails(),
                    ),
                  ),
                ),
              ),

              // Overlapping profile image
              Positioned(
                top: headerHeight - 90.h,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    width: 112.w,
                    height: 130.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      border: Border.all(color: Colors.white, width: 4.w),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          blurRadius: 16.r,
                          offset: Offset(0, 8.h),
                        ),
                      ],
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/vendor_details/Avatar.png",
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 8.h),
      ],
    );
  }
}

class _ListingDetails extends StatelessWidget {
  const _ListingDetails();

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return Column(
      children: <Widget>[
        Text(
          'Full Service Lawn Care',
          textAlign: TextAlign.center,
          style: text.headlineSmall?.copyWith(
            fontWeight: FontWeight.w800,
            color: cs.onSurface,
            fontSize: 20.sp,
          ),
        ),
        SizedBox(height: 12.h),

        // Rating + reviews
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ...List.generate(
              5,
              (int i) => Icon(
                Icons.star_rounded,
                size: 22.r,
                color: const Color(0xFFFFB300),
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              '93 reviews',
              style: text.titleMedium?.copyWith(
                color: const Color(0xFF8F9BB3),
                fontWeight: FontWeight.w600,
                fontSize: 13.5.sp,
              ),
            ),
          ],
        ),
        SizedBox(height: 12.h),

        // Location
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.location_on_outlined, size: 20.r, color: cs.primary),
            SizedBox(width: 6.w),
            Text(
              'Serves Phonix, Los Angeles',
              style: text.titleMedium?.copyWith(
                color: cs.onSurface,
                fontSize: 13.5.sp,
              ),
            ),
          ],
        ),
        SizedBox(height: 16.h),

        // Chips
        Wrap(
          spacing: 10.w,
          runSpacing: 10.h,
          alignment: WrapAlignment.center,
          children: const <Widget>[
            _PillChip(label: 'In High Demand'),
            _PillChip(label: 'Discount Available', tint: Colors.purple),
          ],
        ),
      ],
    );
  }
}

class _PillChip extends StatelessWidget {
  const _PillChip({required this.label, this.tint});

  final String label;
  final Color? tint;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final Color base = tint ?? cs.primary;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: base.withOpacity(.7),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: base.withOpacity(0.28)),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.w700,
          color: Colors.white,
          fontSize: 13.5.sp,
        ),
      ),
    );
  }
}
