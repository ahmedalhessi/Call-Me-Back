import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import '../constants/colors_manager.dart';
import '../constants/images_manager.dart';
import '../constants/text_styles_manager.dart';
import 'star_row.dart';

class VendorCardWidget extends StatelessWidget {
  final String imgPath;
  final String title;
  final int price;
  final double rating;
  final String? location;
  final int? reviews;
  final List<Widget>? badges;
  final DateTime? dateTime;
  final bool isCompleted;
  final bool isArchived;

  const VendorCardWidget.vendor({
    super.key,
    required this.imgPath,
    required this.title,
    required this.price,
    required this.location,
    required this.rating,
    required this.reviews,
    required this.badges,
  }) : dateTime = null,
       isCompleted = false,
       isArchived = false;

  // -------- Completed card constructor --------
  const VendorCardWidget.completed({
    super.key,
    required this.imgPath,
    required this.title,
    required this.price,
    required this.rating,
    required this.dateTime,
  }) : location = null,
       reviews = null,
       badges = null,
       isCompleted = true,
       isArchived = false;

  const VendorCardWidget.archived({
    super.key,
    required this.title,
    required this.price,
    required this.dateTime,
    required this.imgPath,
  }) : isCompleted = false,
       location = null,
       reviews = null,
       badges = null,
       rating = 0,
       isArchived = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 160),
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: ColorsManager.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // image
          Container(
            width: 71,
            height: 71,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 12),

          // body
          Expanded(child: buildBody()),
        ],
      ),
    );
  }

  Widget buildVendor() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStylesManager.bodySemibold,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 5),

        Row(
          children: [
            StarRow(rating: rating, size: 14),
            const SizedBox(width: 6),
            Text(
              "$reviews Reviews",
              style: TextStylesManager.subTitleRegularSubtitleColor,
            ),
          ],
        ),

        const SizedBox(height: 5),

        Row(
          children: [
            SvgPicture.asset(ImagesManager.location, width: 16, height: 16),
            const SizedBox(width: 5),
            Expanded(
              child: Text(
                location ?? "",
                style: TextStylesManager.paragraphRegular,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),

        const SizedBox(height: 5),

        Row(
          children: [
            Text("\$$price", style: TextStylesManager.captionSemiBoldBlueColor),
            const SizedBox(width: 5),
            Text(
              "Starting Cost",
              style: TextStylesManager.subTitleRegularSubtitleColor,
            ),
          ],
        ),

        if (badges != null) Wrap(spacing: 10, runSpacing: 8, children: badges!),
      ],
    );
  }

  Widget buildCompleted() {
    final formattedDate = dateTime != null
        ? DateFormat("hh:mm a, MMM dd yyyy").format(dateTime!)
        : "";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStylesManager.bodySemibold,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 5),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Your Review",
              style: TextStylesManager.subTitleRegularSubtitleColor,
            ),
            StarRow(rating: rating, size: 14),
          ],
        ),
        const SizedBox(height: 5),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total Price",
              style: TextStylesManager.subTitleRegularSubtitleColor,
            ),
            Text("\$$price", style: TextStylesManager.captionSemiBoldBlueColor),
          ],
        ),
        const SizedBox(height: 5),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Date Time",
              style: TextStylesManager.subTitleRegularSubtitleColor,
            ),
            Text(formattedDate, style: TextStylesManager.paragraphRegular),
          ],
        ),
        const SizedBox(height: 10),

        Wrap(
          alignment: WrapAlignment.end,
          children: [
            Container(
              width: 120,
              height: 34,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 5, top: 5),
              decoration: BoxDecoration(
                color: ColorsManager.yellow,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "Rating",

                style: TextStylesManager.captionRegularWhite,
              ),
            ),
            const SizedBox(width: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              width: 120,
              height: 34,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 5, top: 5),
              decoration: BoxDecoration(
                color: ColorsManager.primary,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "Re-booking",
                style: TextStylesManager.captionRegularWhite,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildArchived() {
    final formattedDate = dateTime != null
        ? DateFormat("hh:mm a, MMM dd yyyy").format(dateTime!)
        : "";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStylesManager.bodySemibold,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 5),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total Price",
              style: TextStylesManager.subTitleRegularSubtitleColor,
            ),
            Text("\$$price", style: TextStylesManager.captionSemiBoldBlueColor),
          ],
        ),
        const SizedBox(height: 5),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Date Time",
              style: TextStylesManager.subTitleRegularSubtitleColor,
            ),
            Text(formattedDate, style: TextStylesManager.paragraphRegular),
          ],
        ),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            width: 120,
            height: 34,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 5, top: 5),
            decoration: BoxDecoration(
              color: ColorsManager.primary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              "Re-booking",
              style: TextStylesManager.captionRegularWhite,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildBody() {
    if (isCompleted) return buildCompleted();
    if (isArchived) return buildArchived();
    return buildVendor();
  }
}
