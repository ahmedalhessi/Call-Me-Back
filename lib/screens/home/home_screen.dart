import 'package:call_me_back/core/constants/images_manager.dart';
import 'package:call_me_back/core/constants/text_styles_manager.dart';
import 'package:call_me_back/core/models/service_model.dart';
import 'package:call_me_back/core/widgets/home_header_card.dart';
import 'package:call_me_back/core/widgets/home_section_card.dart';
import 'package:call_me_back/core/widgets/service_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final List<Map<String, dynamic>> sectionOneDummyData = [
  {
    'name': 'Full Service Lawn Care',
    'price': '\$45 - \$146',
    'imageUrl': ImagesManager.service1,
  },
  {
    'name': 'Plumbing Drain Repair',
    'price': '\$60 - \$125',
    'imageUrl': ImagesManager.service2,
  },
  {
    'name': 'Full Service Lawn Care',
    'price': '\$60 - \$125',
    'imageUrl': ImagesManager.service1,
  },
];
final List<Map<String, dynamic>> section2Dummy = [
  {
    'name': 'Full Service Lawn Care',
    'price': '\$45 - \$146',
    'imageUrl': ImagesManager.service3,
  },
  {
    'name': 'Plumbing Drain Repair',
    'price': '\$60 - \$125',
    'imageUrl': ImagesManager.service4,
  },
  {
    'name': 'Full Service Lawn Care',
    'price': '\$60 - \$125',
    'imageUrl': ImagesManager.service3,
  },
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Los Angeles, California, USA", //TODO: use location service
          style: TextStylesManager.subTitleSemibold,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: HomeHeaderCard(
              name: 'Selena', //TODO: use user data
              searchController: TextEditingController(),
            ),
          ),
          SizedBox(height: 15.h),

          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: buildBody(),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HomeSectionCard(
            onViewAllPressed: () {},
            cardType: CardType.recommended,
            title: 'Recommended for You',
            sectionList: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ServiceItemWidget.recommendedCard(
                  serviceModel: ServiceModel(
                    id: index,
                    imageUrl: sectionOneDummyData[index]['imageUrl'],
                    name: sectionOneDummyData[index]['name'],
                    price: sectionOneDummyData[index]['price'],
                  ),
                  onPressed: () => print('Service Item Pressed'),
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 16.w),
              itemCount: sectionOneDummyData.length,
            ),
          ),
          SizedBox(height: 25.h),
          HomeSectionCard(
            onViewAllPressed: () {
              print('View All Pressed');
            },
            cardType: CardType.normal,
            title: 'Moving Into a New Home',
            sectionList: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ServiceItemWidget.normalCard(
                  onPressed: () => print('Service Item Pressed'),
                  serviceModel: ServiceModel(
                    id: index,
                    imageUrl: section2Dummy[index]['imageUrl'],
                    name: section2Dummy[index]['name'],
                    price: section2Dummy[index]['price'],
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 16.w),
              itemCount: sectionOneDummyData.length,
            ),
          ),
          SizedBox(height: 25.h),
          HomeSectionCard(
            onViewAllPressed: () {
              print('View All Pressed');
            },
            cardType: CardType.normal,
            title: 'Essential Home Services',
            sectionList: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ServiceItemWidget.normalCard(
                  onPressed: () => print('Service Item Pressed'),
                  serviceModel: ServiceModel(
                    id: index,
                    imageUrl: section2Dummy[index]['imageUrl'],
                    name: section2Dummy[index]['name'],
                    price: section2Dummy[index]['price'],
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 16.w),
              itemCount: sectionOneDummyData.length,
            ),
          ),
          SizedBox(height: 25.h),
          HomeSectionCard(
            onViewAllPressed: () {
              print('View All Pressed');
            },
            cardType: CardType.normal,
            title: 'Outdoor Upkeep',
            sectionList: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ServiceItemWidget.normalCard(
                  onPressed: () => print('Service Item Pressed'),
                  serviceModel: ServiceModel(
                    id: index,
                    imageUrl: section2Dummy[index]['imageUrl'],
                    name: section2Dummy[index]['name'],
                    price: section2Dummy[index]['price'],
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 16.w),
              itemCount: sectionOneDummyData.length,
            ),
          ),
        ],
      ),
    );
  }
}
