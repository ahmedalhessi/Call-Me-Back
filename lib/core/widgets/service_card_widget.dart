import 'package:call_me_back/core/widgets/star_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants/colors_manager.dart';
import '../constants/images_manager.dart';
import '../constants/text_styles_manager.dart';


class ServicesCardWidget extends StatelessWidget {
  const ServicesCardWidget({
    super.key,
    required this.imgPath,
    required this.price,
    required this.location,
    required this.rating,
    required this.reviews,
    required this.badges, required this.title,
  });
  final String imgPath;
  final int price;
  final String location;
  final double rating;
  final int reviews;
  final List<Widget> badges;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 160),
      margin: EdgeInsets.symmetric(vertical:8),
      padding: EdgeInsets.all(12),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: ColorsManager.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding:  EdgeInsets.only(right: 12),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imgPath), ),
                  borderRadius: BorderRadius.circular(12),
                ),
                width: 71,
                height: 71,
              ),
            ),
          ),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                 title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStylesManager.bodySemibold,
                ),

                Row(
                  children: [
                    StarRow(rating: rating, size: 14),
                    SizedBox(width: 6),
                    Text(
                      "$reviews Reviews",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStylesManager.subTitleRegularSubtitleColor,
                    ),
                  ],
                ),

                Row(
                  children: [
                    SvgPicture.asset(
                      ImagesManager.location,
                      width: 16,
                      height: 16,
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text(location, style: TextStylesManager.paragraphRegular, maxLines: 1,
                        overflow: TextOverflow.ellipsis,),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Text(
                      "$price\$",
                      style: TextStylesManager.captionSemiBoldBlueColor,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Starting Cost",
                      style: TextStylesManager.subTitleRegularSubtitleColor,
                    ),
                  ],
                ),
                Wrap(
                  spacing: 10,
                  runSpacing: 8,
                  children: badges,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
