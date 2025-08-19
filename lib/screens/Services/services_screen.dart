import 'package:call_me_back/core/constants/colors_manager.dart';
import 'package:call_me_back/core/constants/images_manager.dart';
import 'package:call_me_back/core/constants/text_styles_manager.dart';
import 'package:call_me_back/core/widgets/badges_widget.dart';
import 'package:call_me_back/core/widgets/vendor_card_widget.dart';
import 'package:call_me_back/core/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Outdoor Upkeep", style: TextStylesManager.bodySemibold),
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.arrow_back, color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              tooltip: 'Filters',
              icon: SvgPicture.asset(
                fit: BoxFit.contain,
                ImagesManager.filter,
                width: 24,
                height: 24,
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(68),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 6),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TabBar(
                    isScrollable: true,
                    tabAlignment: TabAlignment.center,
                    dividerColor: Colors.transparent,
                    labelPadding: const EdgeInsets.symmetric(horizontal: 30),
                    indicatorPadding: EdgeInsets.zero,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      color: ColorsManager.blue, // your primary blue
                      borderRadius: BorderRadius.circular(12),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: ColorsManager.subtitleColor,
                    labelStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                    unselectedLabelStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                    tabs: const [
                      Tab(text: 'All'),
                      Tab(text: 'Ratings'),
                      Tab(text: 'In High Demand'),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Divider(height: 1, thickness: 1, color: Colors.grey.shade200),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: TextFieldWidget.search(
                        controller: searchController,
                      ),
                    ),
                    VendorCardWidget.vendor(
                      title: "Lawn Starter Lawn Care",
                      imgPath: ImagesManager.person1,
                      location: "Serves Phonix,Los Angeles",
                      price: 50,
                      rating: 5,
                      reviews: 93,
                      badges: [
                        BadgeWidget(
                          text: "In High Demand",
                          color: ColorsManager.blue,
                        ),
                        BadgeWidget(
                          text: "Discount Available",
                          color: ColorsManager.purple,
                        ),
                      ],
                    ),
                    VendorCardWidget.vendor(
                      title: "Outdoor Landscaping And Design",
                      imgPath: ImagesManager.person2,
                      location: "Jezojcaw,Los Angeles",
                      price: 32,
                      rating: 4,
                      reviews: 127,
                      badges: [
                        BadgeWidget(
                          text: "Offers Remote Available",
                          color: ColorsManager.green,
                        ),
                      ],
                    ),
                    VendorCardWidget.vendor(
                      title: "Swimming Pool Cleaning",
                      imgPath: ImagesManager.person4,
                      location: "Hohikor,Los Angeles",
                      price: 25,
                      rating: 4,
                      reviews: 93,
                      badges: [
                        BadgeWidget(
                          text: "In High Demand",
                          color: ColorsManager.blue,
                        ),
                      ],
                    ),
                    VendorCardWidget.vendor(
                      title: "Fence And Gate Installation",
                      imgPath: ImagesManager.person3,
                      location: "Hohikor,Los Angeles",
                      price: 50,
                      rating: 5,
                      reviews: 22,
                      badges: [
                        BadgeWidget(
                          text: "In High Demand",
                          color: ColorsManager.blue,
                        ),
                        BadgeWidget(
                          text: "Discount Available",
                          color: ColorsManager.purple,
                        ),
                      ],
                    ),


                  ],
                ),
              ),

              Center(
                child: Text(
                  "Filter by Ratings",
                  style: TextStylesManager.bodySemibold,
                ),
              ),

              Center(
                child: Text(
                  "High Demand Services",
                  style: TextStylesManager.bodySemibold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// CompletedVendorCard(imgPath: "assets/person1.png", text: "lawn care lawn starter", rate: 5, price: 110, dateTime: DateTime(2020,),),
//        VendorCardWidget(
//          title: "Lawn Starter Lawn Care",
//          imgPath: ImagesManager.person1,
//          location: "Serves Phonix,Los Angeles",
//          price: 50,
//          rating: 5,
//          reviews: 93,
//          badges: [
//            BadgeWidget(
//              text: "In High Demand",
//              color: ColorsManager.blue,
//            ),
//            BadgeWidget(
//              text: "Discount Available",
//              color: ColorsManager.purple,
//            ),
//          ],
//        ),
//        VendorCardWidget(
//          title: "Outdoor Landscaping And Design",
//          imgPath: ImagesManager.person2,
//          location: "Jezojcaw,Los Angeles",
//          price: 32,
//          rating: 4,
//          reviews: 127,
//          badges: [
//            BadgeWidget(
//              text: "Offers Remote Available",
//              color: ColorsManager.green,
//            ),
//          ],
//        ),
//        VendorCardWidget(
//          title: "Swimming Pool Cleaning",
//          imgPath: ImagesManager.person4,
//          location: "Hohikor,Los Angeles",
//          price: 25,
//          rating: 4,
//          reviews: 93,
//          badges: [
//            BadgeWidget(
//              text: "In High Demand",
//              color: ColorsManager.blue,
//            ),
//          ],
//        ),
//        VendorCardWidget(
//          title: "Fence And Gate Installation",
//          imgPath: ImagesManager.person3,
//          location: "Hohikor,Los Angeles",
//          price: 50,
//          rating: 5,
//          reviews: 22,
//          badges: [
//            BadgeWidget(
//              text: "In High Demand",
//              color: ColorsManager.blue,
//            ),
//            BadgeWidget(
//              text: "Discount Available",
//              color: ColorsManager.purple,
//            ),
//          ],
//        ),
