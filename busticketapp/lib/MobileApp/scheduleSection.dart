import 'package:busticketapp/MobileApp/bottomNavigationBar.dart';
import 'package:busticketapp/customDropDown.dart';
import 'package:busticketapp/secondSection.dart';
import 'package:busticketapp/thirdSection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduleSection extends StatefulWidget {
  const ScheduleSection({super.key});

  @override
  State<ScheduleSection> createState() => _ScheduleSectionState();
}

class _ScheduleSectionState extends State<ScheduleSection> {
  bool isAllselected = true;
  bool isClassSelected = false;
  bool isBusOperator = false;
  bool isPreferenceSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xFFFFF0C2),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Heading(
                text: "Schedules",
                fontSize: 16,
                color: const Color(0xFF007BFF),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                ' Find available departure times.',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MyOwnDropDown(
                    containerHeight: 46,
                    width: 330,
                    text1: '',
                    text2: 'Departure date',
                    fontSize: 13,
                    borderRadius: 20,
                    image: 'assets/uit_calender.png',
                    imageHeight: 30,
                    imageWidth: 30,
                    // controller: ptController,
                    // errorText: timeError,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Heading(
                text: "Filter selection",
                fontSize: 16,
                color: const Color(0xFF007BFF),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 1.2,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isBusOperator = false;
                                  isClassSelected = false;
                                  isPreferenceSelected = false;
                                  isAllselected = !isAllselected;
                                });
                              },
                              child: RoundedBox(
                                fontSize: 15,
                                iconSize: 14,
                                containerHeight: 40,
                                borderWidth: isAllselected ? 0 : 1,
                                applyborder: isAllselected ? false : true,
                                containerWidth: 60,
                                isLeadingIcon: false,
                                borderColor: isAllselected
                                    ? Colors.transparent
                                    : Colors.black,
                                backgroundColor: isAllselected
                                    ? const Color(0xFFFFC107)
                                    : Colors.transparent,
                                isTrailingIcon: isAllselected ? true : false,
                                textData: 'All',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 30,
                              child: Text('Class'),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isBusOperator = false;
                                  isClassSelected = !isClassSelected;
                                  isPreferenceSelected = false;
                                  isAllselected = false;
                                });
                              },
                              child: RoundedBox(
                                fontSize: 15,
                                iconSize: 14,
                                containerHeight: 40,
                                borderWidth: isClassSelected ? 0 : 1,
                                applyborder: isClassSelected ? false : true,
                                containerWidth: 100,
                                isLeadingIcon: false,
                                borderColor: isClassSelected
                                    ? Colors.transparent
                                    : Colors.black,
                                backgroundColor: isClassSelected
                                    ? const Color(0xFFFFC107)
                                    : Colors.transparent,
                                isTrailingIcon: isClassSelected ? true : false,
                                textData: 'All',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 30,
                              child: Text('Bus Operator'),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isBusOperator = !isBusOperator;
                                  isClassSelected = false;
                                  isPreferenceSelected = false;
                                  isAllselected = false;
                                });
                              },
                              child: RoundedBox(
                                fontSize: 15,
                                iconSize: 14,
                                containerHeight: 40,
                                borderWidth: isBusOperator ? 0 : 1,
                                applyborder: isBusOperator ? false : true,
                                containerWidth: 100,
                                isLeadingIcon: false,
                                borderColor: isBusOperator
                                    ? Colors.transparent
                                    : Colors.black,
                                backgroundColor: isBusOperator
                                    ? const Color(0xFFFFC107)
                                    : Colors.transparent,
                                isTrailingIcon: isBusOperator ? true : false,
                                textData: 'All',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 30,
                              child: Text('Preference'),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isBusOperator = false;
                                  isClassSelected = false;
                                  isPreferenceSelected = !isPreferenceSelected;
                                  isAllselected = false;
                                });
                              },
                              child: RoundedBox(
                                fontSize: 15,
                                iconSize: 14,
                                containerHeight: 40,
                                borderWidth: isPreferenceSelected ? 0 : 1,
                                applyborder:
                                    isPreferenceSelected ? false : true,
                                containerWidth: 100,
                                isLeadingIcon: false,
                                borderColor: isPreferenceSelected
                                    ? Colors.transparent
                                    : Colors.black,
                                backgroundColor: isPreferenceSelected
                                    ? const Color(0xFFFFC107)
                                    : Colors.transparent,
                                isTrailingIcon:
                                    isPreferenceSelected ? true : false,
                                textData: 'All',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Heading(
                text: "Available bus services",
                fontSize: 16,
                color: const Color(0xFF007BFF),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today: 02/12/24',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color(0xFF007BFF)),
                    ),
                    Text(
                      '09',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color(0xFF007BFF)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CardElevated2(),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

// ignore: must_be_immutable
class CardElevated2 extends StatelessWidget {
  CardElevated2({super.key, this.loacationVisible = false});
  bool loacationVisible;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 410, // Set the height
      width: 320, // Set the width
      decoration: BoxDecoration(
        color: Colors.white, // White background
        borderRadius: BorderRadius.circular(20), // Round border with a radius
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  height: 32,
                  width: 70,
                  child: Image.asset(
                    "assets/Finex4.png", // Set height
                    fit: BoxFit.cover,
                    height: 70,
                    width: 70,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Finexs Voyage',
                  style: TextStyle(fontSize: 16, color: Color(0xFF007BFF)),
                )
              ],
            ),
            Container(
              height: 340, // Set the height
              width: 330, // Set the width
              decoration: BoxDecoration(
                color: const Color(0xFFE7F3FF), // White background
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Inner card
                  SizedBox(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: SizedBox(
                            height: 22,
                            width: 345,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(
                                  height: 20,
                                  width: 63,
                                  child: Text(
                                    'YaoUnde',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 18.0),
                                  child: Image.asset(
                                    "assets/minibus.png",
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                  width: 63,
                                  child: Text(
                                    'Douala',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            loacationVisible
                                ? SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: Image.asset("assets/location.png"),
                                  )
                                : const SizedBox(
                                    height: 0,
                                    width: 0,
                                  ),
                            const SizedBox(
                              width: 7,
                            ),
                            SizedBox(
                                width: 250,
                                child: Stack(
                                  children: [
                                    Image.asset("assets/xyz2.png"),
                                    Image.asset("assets/xyz1.png"),
                                  ],
                                )),
                            const SizedBox(
                              width: 7,
                            ),
                            loacationVisible
                                ? SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: Image.asset("assets/location.png"),
                                  )
                                : const SizedBox(
                                    height: 0,
                                    width: 0,
                                  ),
                          ],
                        ),
                        SizedBox(
                            height: 22,
                            width: 345,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                SizedBox(
                                  height: 32,
                                  width: 43,
                                  child: Text(
                                    'Nsam',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 32,
                                  width: 43,
                                  child: Text(
                                    'Akwa',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                )
                              ],
                            )),
                        SizedBox(
                          width: 355,
                          child: Image.asset("assets/BrokenLine.png"),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          height: 32,
                          width: 345,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              SizedBox(
                                height: 16,
                                width: 111,
                                child: Text(
                                  'DepartureTime',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 16,
                                width: 70,
                                child: Text(
                                  '5:00 AM',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          height: 16,
                          width: 345,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              SizedBox(
                                height: 18,
                                width: 61,
                                child: Text(
                                  'Duration',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 16,
                                width: 50,
                                child: Text(
                                  '5h30m',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          height: 16,
                          width: 345,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              SizedBox(
                                height: 16,
                                width: 90,
                                child: Text(
                                  'Arrival Time',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 16,
                                width: 70,
                                child: Text(
                                  '10:30 AM',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        SizedBox(
                          height: 16,
                          width: 345,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              SizedBox(
                                height: 16,
                                width: 50,
                                child: Text(
                                  'Class',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 16,
                                width: 50,
                                child: Text(
                                  'V.V.I.P',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          height: 16,
                          width: 345,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              SizedBox(
                                height: 16,
                                width: 75,
                                child: Text(
                                  'Amenities',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 16,
                                width: 140,
                                child: Text(
                                  'Wi-Fi,Refreshments',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          height: 16,
                          width: 345,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              SizedBox(
                                height: 16,
                                width: 150,
                                child: Text(
                                  'Available Seats',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 16,
                                width: 40,
                                child: Text(
                                  '7/30',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          height: 16,
                          width: 345,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              SizedBox(
                                height: 16,
                                width: 150,
                                child: Text(
                                  'Price per ticket',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 16,
                                width: 84,
                                child: Text(
                                  '15000 XAF',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  //Button
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      height: 40,
                      width: 275,
                      decoration: BoxDecoration(
                        color: const Color(0xFF007BFF), // White background
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          'Book Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class FilterSelection extends StatefulWidget {
  double containerHeight;
  double containerWidht;
  String text;
  FilterSelection(
      {super.key,
      this.containerHeight = 40,
      this.containerWidht = 98,
      this.text = 'All'});

  @override
  State<FilterSelection> createState() => _FilterSelectionState();
}

class _FilterSelectionState extends State<FilterSelection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 120, right: 20),
      child: SizedBox(
        height: widget.containerHeight,
        width: widget.containerWidht,
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(widget.text),
              Image.asset('assets/Mobile/arrowDownSchedule.png')
            ],
          ),
        ),
      ),
    );
  }
}
