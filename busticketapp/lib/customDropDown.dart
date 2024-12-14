
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class MyOwnDropDown extends StatefulWidget {
  double containerHeight;
  double width;
  double opacity;
  String text1;
  String text2;
  String image;
  String? errorText;
  TextEditingController? controller;
  bool showRedborder;
  double fontSize;
  FontWeight fontweight1;
  FontWeight fontweight2;
  double borderRadius;
  double imageHeight;
  double imageWidth;
  MyOwnDropDown({
    super.key,
    this.containerHeight = 55,
    this.width = 300,
    this.text1 = '',
    this.text2 = '',
    this.opacity = 0.8,
    this.image = 'assets/lets-icons_expand-up-light.png',
    this.errorText = '',
    this.controller,
    this.showRedborder = false,
    this.fontSize = 17,
    this.fontweight1 = FontWeight.w400,
    this.fontweight2 = FontWeight.w300,
    this.borderRadius = 15,
    this.imageHeight = 40,
    this.imageWidth = 40,
  });

  @override
  State<MyOwnDropDown> createState() => _MyOwnDropDownState();
}

class _MyOwnDropDownState extends State<MyOwnDropDown> {
  // Track if the dropdown is expanded
  bool _isExpanded = false;

  // List of dropdown items to show when expanded
  List<String> dropdownItems = [
    "Option 1",
    "Option 2",
    "Option 3",
  ];

  // Controller for TextFormField when needed

  // Function to show calendar if image is the calendar image
  Future<void> _showCalendar(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // Initial date
      firstDate: DateTime(2000), // First date
      lastDate: DateTime(2101), // Last date
    );

    if (pickedDate != null) {
      setState(() {
        widget.text2 = "${pickedDate.toLocal()}"
            .split(' ')[0]; // Update text2 with selected date
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, // Allow overflow to go outside the stack
      children: [
        // Main widget that triggers the dropdown or calendar
        GestureDetector(
          onTap: () {
            if (widget.image == 'assets/uit_calender.png') {
              _showCalendar(context); // Open calendar if image is calendar
            } else {
              setState(() {
                _isExpanded = !_isExpanded; // Toggle the dropdown state
              });
            }
          },
          child: Container(
            height: widget.containerHeight,
            width: widget.width,
            decoration: BoxDecoration(
              border: widget.showRedborder
                  ? Border.all(color: Colors.red, width: 2)
                  : const Border(),
              borderRadius: BorderRadius.all(
                Radius.circular(widget.borderRadius),
              ),
              color: Colors.white.withOpacity(widget.opacity),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Row(
                children: [
                  Text(
                    widget.text1,
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: widget.fontSize,
                      fontWeight: widget.fontweight1,
                    ),
                  ),
                  const SizedBox(width: 5),
                  // Show TextFormField if image is not calendar
                  widget.image == 'assets/uit_calender.png'
                      ? Text(
                          widget.text2,
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: widget.fontSize,
                            fontWeight: widget.fontweight2,
                          ),
                          overflow: TextOverflow.ellipsis,
                        )
                      : Expanded(
                          child: TextFormField(
                            controller: widget.controller,
                            decoration: InputDecoration(
                              // errorText: widget.errorText,
                              hintText: widget.text2,
                              border: InputBorder.none, // No border
                            ),
                            style: TextStyle(
                              fontFamily: 'RobotoLight',
                              fontSize: widget.fontSize,
                            ),
                            onChanged: (value) {
                              setState(() {
                                widget.text2 =
                                    value; // Update text2 dynamically
                              });
                            },
                          ),
                        ),
                  widget.image == 'assets/uit_calender.png'
                      ? const Spacer()
                      : const SizedBox(),
                  SizedBox(
                    height: widget.imageHeight,
                    width: widget.imageWidth,
                    child: Image.asset(widget.image),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Show dropdown items when expanded (for non-calendar case)
        if (_isExpanded && widget.image != 'assets/uit_calender.png')
          Positioned(
            top:
                widget.containerHeight, // Position it right below the container
            left: 0,
            child: Container(
                width: widget.width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: const SizedBox()),
          ),
      ],
    );
  }
}

