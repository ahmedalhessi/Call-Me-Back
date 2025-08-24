import 'package:flutter/material.dart';

class FilterSection extends StatefulWidget {
  final String sectionName;
  final String sectionOp1Name;
  final String sectionOp2Name;
  final String sectionOp3Name;
  final String sectionOp4Name;
  final String? sectionOp5Name;

  const FilterSection({
    super.key,
    required this.sectionName,
    required this.sectionOp1Name,
    required this.sectionOp2Name,
    required this.sectionOp3Name,
    required this.sectionOp4Name,
    this.sectionOp5Name,
  });

  @override
  State<FilterSection> createState() => _FilterSectionState();
}

class _FilterSectionState extends State<FilterSection> {
  bool op1 = false;
  bool op2 = true;
  bool op3 = false;
  bool op4 = false;
  bool op5 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            dense: true,
            visualDensity: VisualDensity(horizontal: 4, vertical: -4),
            contentPadding: EdgeInsets.zero,
            title: Text(
              widget.sectionName,
              style: const TextStyle(
                fontFamily: "SFProDisplay",
                fontSize: 15,
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          CheckboxListTile(
            dense: true,

            visualDensity: VisualDensity(horizontal: 4, vertical: -4),
            contentPadding: EdgeInsets.zero,
            title: Text(
              widget.sectionOp1Name,
              style: const TextStyle(fontSize: 13, fontFamily: "SFProDisplay"),
            ),
            value: op1,
            onChanged: (val) {
              setState(() {
                op1 = val ?? false;
              });
            },
          ),
          CheckboxListTile(
            dense: true,

            visualDensity: VisualDensity(horizontal: 4, vertical: -4),
            contentPadding: EdgeInsets.zero,
            title: Text(
              widget.sectionOp2Name,
              style: const TextStyle(fontSize: 13, fontFamily: "SFProDisplay"),
            ),
            value: op2,
            onChanged: (val) {
              setState(() {
                op2 = val ?? false;
              });
            },
          ),
          CheckboxListTile(
            dense: true,

            visualDensity: VisualDensity(horizontal: 4, vertical: -4),
            contentPadding: EdgeInsets.zero,
            title: Text(
              widget.sectionOp3Name,
              style: const TextStyle(fontSize: 13, fontFamily: "SFProDisplay"),
            ),
            value: op3,
            onChanged: (val) {
              setState(() {
                op3 = val ?? false;
              });
            },
          ),
          CheckboxListTile(
            dense: true,

            visualDensity: VisualDensity(horizontal: 4, vertical: -4),
            contentPadding: EdgeInsets.zero,
            title: Text(
              widget.sectionOp4Name,
              style: const TextStyle(fontSize: 13, fontFamily: "SFProDisplay"),
            ),
            value: op4,
            onChanged: (val) {
              setState(() {
                op4 = val ?? false;
              });
            },
          ),
          if (widget.sectionOp5Name != null)
            CheckboxListTile(
              dense: true,

              visualDensity: VisualDensity(horizontal: 4, vertical: -4),
              contentPadding: EdgeInsets.zero,
              title: Text(
                widget.sectionOp5Name!,
                style: const TextStyle(
                  fontSize: 13,
                  fontFamily: "SFProDisplay",
                ),
              ),
              value: op5,
              onChanged: (val) {
                setState(() {
                  op5 = val ?? false;
                });
              },
            ),
        ],
      ),
    );
  }
}
