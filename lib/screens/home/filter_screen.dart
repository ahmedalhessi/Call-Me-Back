import 'package:call_me_back/core/widgets/filter_section.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Filters",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontFamily: "SFProDisplay",
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        leading: TextButton(
          onPressed: () {},
          child: const Text(
            "Reset",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "SFProDisplay",
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Cancel",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "SFProDisplay",
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1, thickness: 1, color: Color(0xFFE0E0E0)),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: FilterSection(
                  sectionName: "Services Needed",
                  sectionOp1Name: "Mowing, trimming and edging",
                  sectionOp2Name: "Leaf clean-up",
                  sectionOp3Name: "Weeding and prevention",
                  sectionOp4Name: "Fertilizer application",
                  sectionOp5Name: "Seeding or overseeding",
                ),
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: FilterSection(
                  sectionName: "Frequency of Services",
                  sectionOp1Name: "One time only",
                  sectionOp2Name: "Once a week",
                  sectionOp3Name: "Every other week",
                  sectionOp4Name: "Once a month",
                ),
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: FilterSection(
                  sectionName: "Estimated Lawn Size",
                  sectionOp1Name: "Small (less than 1,000 sq ft)",
                  sectionOp2Name: "Medium (1,000 - 5,000 sq ft)",
                  sectionOp3Name: "Large (5,000 - 10,000 sq ft)",
                  sectionOp4Name: "Very large (10,000 - 15,000 sq ft)",
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Center(
                  child: Text(
                    "Apply",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontFamily: "SFProDisplay",
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(.28),
                      blurRadius: 15,
                      offset: Offset(0, 7),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
