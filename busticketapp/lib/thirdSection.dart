import 'package:busticketapp/customDropDown.dart';
import 'package:busticketapp/secondSection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdSection extends StatefulWidget {
  const ThirdSection({super.key});

  @override
  State<ThirdSection> createState() => _ThirdSectionState();
}

class _ThirdSectionState extends State<ThirdSection> {
  bool isAllselected = true;
  bool isVipselected = false;
  bool isVVipSelected = false;
  bool isRegularselected = false;
// is all selected 2
  bool isAllselected2 = true;
  bool isFinexSelected = false;
  bool isUnitedExpressSelected = false;
  bool isAmourSelected = false;
  bool isGeneralSelected = false;

  // is all selected 3

  bool isAllSelected3 = true;
  bool isMorningSelected = false;
  bool isAfterNoonSelected = false;
  bool isNightSelected = false;
  //////////////////
  // ScrollController for the SingleChildScrollView
  final ScrollController _scrollController = ScrollController();

  double _scrollPosition = 0.0;
  final double _scrollOffset = 300.0;
  void _moveForward() {
    setState(() {
      _scrollPosition += _scrollOffset;
    });
    _scrollController.animateTo(
      _scrollPosition,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _moveBackward() {
    setState(() {
      _scrollPosition -= _scrollOffset;
    });
    _scrollController.animateTo(
      _scrollPosition,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Rounded corners
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 1660,
            // height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                // borderRadius: BorderRadius.circular(40),
                color: Color(0xFFFEEDBB)),

            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Heading(
                  text: 'Schedules',
                  fontSize: 40,
                ),
                const SizedBox(
                  height: 20,
                ),
                Paragraph(
                  width: 700,
                  height: 65,
                  text:
                      'Explore our comprehensive travel schedule to find the perfect journey for you. Use our convenient filters to search by date, time, service class and bus operator.',
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "What’s Your Destination?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyOwnDropDown(
                      text1: 'From:',
                      text2: 'Yaounde',
                      width: 300,
                      opacity: 1,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    MyOwnDropDown(
                      text1: 'To:',
                      text2: 'City',
                      width: 300,
                      opacity: 1,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyOwnDropDown(
                      text1: 'Departure Date',
                      text2: '',
                      width: 625,
                      opacity: 1,
                      image: 'assets/uit_calender.png',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Heading(
                  text: 'Select Class',
                  fontSize: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          isVVipSelected = false;
                          isVipselected = false;
                          isRegularselected = false;
                          isAllselected = !isAllselected;
                        });
                      },
                      child: RoundedBox(
                        containerHeight: 70,
                        borderWidth: isAllselected ? 0 : 1,
                        applyborder: isAllselected ? false : true,
                        containerWidth: 160,
                        isLeadingIcon: false,
                        borderColor:
                            isAllselected ? Colors.transparent : Colors.black,
                        backgroundColor: isAllselected
                            ? const Color(0xFFFFC107)
                            : Colors.transparent,
                        isTrailingIcon: isAllselected ? true : false,
                        textData: 'All',
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isAllselected = false;
                          isVVipSelected = false;
                          isVipselected = false;
                          isRegularselected = !isRegularselected;
                        });
                      },
                      child: RoundedBox(
                        textData: "Regular",
                        borderWidth: isRegularselected ? 0 : 1,
                        backgroundColor: isRegularselected
                            ? const Color(0xFFFFC107)
                            : Colors.transparent,
                        applyborder: isRegularselected ? false : true,
                        isTrailingIcon: isRegularselected ? true : false,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isAllselected = false;
                          isRegularselected = false;
                          isVVipSelected = false;
                          isVipselected = !isVipselected;
                        });
                      },
                      child: RoundedBox(
                        containerWidth: 118,
                        textData: "V.I.P",
                        borderWidth: isVipselected ? 0 : 1,
                        backgroundColor: isVipselected
                            ? const Color(0xFFFFC107)
                            : Colors.transparent,
                        applyborder: isVipselected ? false : true,
                        isTrailingIcon: isVipselected ? true : false,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isAllselected = false;
                          isRegularselected = false;
                          isVipselected = false;
                          isVVipSelected = !isVVipSelected;
                        });
                      },
                      child: RoundedBox(
                        textData: "V.V.I.P",
                        borderWidth: isVVipSelected ? 0 : 1,
                        backgroundColor: isVVipSelected
                            ? const Color(0xFFFFC107)
                            : Colors.transparent,
                        applyborder: isVVipSelected ? false : true,
                        isTrailingIcon: isVVipSelected ? true : false,
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                Heading(
                  text: 'Bus Operator',
                  fontSize: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                LayoutBuilder(builder: (context, constraints) {
                  bool isSmallScreen = constraints.maxWidth < 1200;
                  return Padding(
                    padding: const EdgeInsets.only(left: 100, right: 100),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: isSmallScreen
                          ? 2
                          : 4, // Adjust spacing for small screens
                      runSpacing: 10, // Add spacing between rows
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              isFinexSelected = false;
                              isUnitedExpressSelected = false;
                              isAmourSelected = false;
                              isGeneralSelected = false;
                              isAllselected2 = !isAllselected2;
                            });
                          },
                          child: RoundedBox(
                            containerHeight: 70,
                            borderWidth: isAllselected2 ? 0 : 1,
                            borderColor: isAllselected2
                                ? Colors.transparent
                                : Colors.black,
                            containerWidth: 160,
                            applyborder: isAllselected2 ? false : true,
                            isLeadingIcon: false,
                            backgroundColor: isAllselected2
                                ? const Color(0xFFFFC107)
                                : Colors.transparent,
                            isTrailingIcon: isAllselected2 ? true : false,
                            textData: 'All',
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isFinexSelected = !isFinexSelected;
                              isUnitedExpressSelected = false;
                              isAmourSelected = false;
                              isGeneralSelected = false;
                              isAllselected2 = false;
                            });
                          },
                          child: RoundedBox(
                            containerWidth: 236,
                            textData: "FINEXS Voyage",
                            borderWidth: 1,
                            applyborder: isFinexSelected ? false : true,
                            backgroundColor: isFinexSelected
                                ? const Color(0xFFFFC107)
                                : Colors.transparent,
                            isTrailingIcon: isFinexSelected ? true : false,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isFinexSelected = false;
                              isUnitedExpressSelected =
                                  !isUnitedExpressSelected;
                              isAmourSelected = false;
                              isGeneralSelected = false;
                              isAllselected2 = false;
                            });
                          },
                          child: RoundedBox(
                            containerWidth: 236,
                            textData: "United Express",
                            borderWidth: 1,
                            applyborder: isUnitedExpressSelected ? false : true,
                            backgroundColor: isUnitedExpressSelected
                                ? const Color(0xFFFFC107)
                                : Colors.transparent,
                            isTrailingIcon:
                                isUnitedExpressSelected ? true : false,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isFinexSelected = false;
                              isUnitedExpressSelected = false;
                              isAmourSelected = !isAmourSelected;
                              isGeneralSelected = false;
                              isAllselected2 = false;
                            });
                          },
                          child: RoundedBox(
                            containerWidth: 236,
                            textData: "Amour Mezam",
                            borderWidth: 1,
                            applyborder: isAmourSelected ? false : true,
                            backgroundColor: isAmourSelected
                                ? const Color(0xFFFFC107)
                                : Colors.transparent,
                            isTrailingIcon: isAmourSelected ? true : false,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isFinexSelected = false;
                              isUnitedExpressSelected = false;
                              isAmourSelected = false;
                              isGeneralSelected = !isGeneralSelected;
                              isAllselected2 = false;
                            });
                          },
                          child: RoundedBox(
                            containerWidth: 236,
                            textData: "General Express",
                            borderWidth: 1,
                            applyborder: isGeneralSelected ? false : true,
                            backgroundColor: isGeneralSelected
                                ? const Color(0xFFFFC107)
                                : Colors.transparent,
                            isTrailingIcon: isGeneralSelected ? true : false,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
                const SizedBox(
                  height: 20,
                ),
                Heading(
                  text: 'Time Interval',
                  fontSize: 24,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 32,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isAllSelected3 = !isAllSelected3;
                              isMorningSelected = false;
                              isAfterNoonSelected = false;
                              isNightSelected = false;
                            });
                          },
                          child: RoundedBox(
                            containerWidth: 100,
                            containerHeight: 50,
                            isLeadingIcon: true,
                            textData: 'All',
                            borderWidth: 1,
                            radioButtonChecked: isAllSelected3 ? true : false,
                            borderColor:
                                isAllSelected3 ? Colors.amber : Colors.black,
                            textColor:
                                isAllSelected3 ? Colors.amber : Colors.black,
                            checkboxColor: Colors.amber,
                            applyborder: true,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: SizedBox(
                            height: 32,
                            child: Text(
                              'Morning',
                              style: GoogleFonts.roboto(
                                fontSize: 24,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isAllSelected3 = false;
                              isMorningSelected = !isMorningSelected;
                              isAfterNoonSelected = false;
                              isNightSelected = false;
                            });
                          },
                          child: RoundedBox(
                            containerWidth: 195,
                            containerHeight: 50,
                            isLeadingIcon: true,
                            textData: '1 AM - 12 PM',
                            borderWidth: 1,
                            applyborder: true,
                            radioButtonChecked:
                                isMorningSelected ? true : false,
                            borderColor:
                                isMorningSelected ? Colors.amber : Colors.black,
                            textColor:
                                isMorningSelected ? Colors.amber : Colors.black,
                            checkboxColor:
                                isMorningSelected ? Colors.amber : Colors.grey,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: SizedBox(
                            height: 32,
                            child: Text('Afternoon',
                                style: GoogleFonts.roboto(
                                  fontSize: 24,
                                  fontWeight: FontWeight.normal,
                                )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isAllSelected3 = false;
                              isMorningSelected = false;
                              isAfterNoonSelected = !isAfterNoonSelected;
                              isNightSelected = false;
                            });
                          },
                          child: RoundedBox(
                            containerWidth: 195,
                            containerHeight: 50,
                            isLeadingIcon: true,
                            textData: '1 PM - 5 PM',
                            borderWidth: 1,
                            applyborder: true,
                            radioButtonChecked:
                                isAfterNoonSelected ? true : false,
                            borderColor: isAfterNoonSelected
                                ? Colors.amber
                                : Colors.black,
                            textColor: isAfterNoonSelected
                                ? Colors.amber
                                : Colors.black,
                            checkboxColor: isAfterNoonSelected
                                ? Colors.amber
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: SizedBox(
                            height: 32,
                            child: Text('Night',
                                style: GoogleFonts.roboto(
                                  fontSize: 24,
                                  fontWeight: FontWeight.normal,
                                )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isAllSelected3 = false;
                              isMorningSelected = false;
                              isAfterNoonSelected = false;
                              isNightSelected = !isNightSelected;
                            });
                          },
                          child: RoundedBox(
                            containerWidth: 195,
                            containerHeight: 50,
                            isLeadingIcon: true,
                            radioButtonChecked: isNightSelected ? true : false,
                            textData: '6 PM - 12 AM',
                            borderWidth: 1,
                            applyborder: true,
                            borderColor:
                                isNightSelected ? Colors.amber : Colors.black,
                            textColor:
                                isNightSelected ? Colors.amber : Colors.black,
                            checkboxColor:
                                isNightSelected ? Colors.amber : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ],
                ),

                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Available Schedules',
                      style: GoogleFonts.roboto(
                        fontSize: 36,
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Today:',
                        style: GoogleFonts.roboto(
                            fontSize: 36,
                            color: Colors.amber,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '02/12/2024',
                        style: GoogleFonts.roboto(
                          fontSize: 36,
                          fontWeight: FontWeight.normal,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                // const CardsElevated(),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: _scrollController,
                  physics: const NeverScrollableScrollPhysics(),
                  // ignore: sized_box_for_whitespace
                  child: SizedBox(
                    width: 1800,
                    child: Row(
                      children: List.generate(
                          4,
                          (index) => Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  CardsElevated(
                                    loacationVisible: index == 2 ? true : false,
                                  ),
                                ],
                              )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                SizedBox(
                  height: 50,
                  width: 130,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: _moveBackward,
                        child: SizedBox(
                          height: 70,
                          width: 50,
                          child: Image.asset(
                            "assets/arrowBack.png",
                            width: 50,
                          ),
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: _moveForward,
                        child: SizedBox(
                          height: 70,
                          width: 50,
                          child: Image.asset(
                            "assets/ArrowFront.png",
                            width: 50,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardsElevated extends StatefulWidget {
  CardsElevated({super.key, this.loacationVisible = false});
  bool loacationVisible;

  @override
  State<CardsElevated> createState() => _CardsElevatedState();
}

class _CardsElevatedState extends State<CardsElevated> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 560, // Set the height
      width: 425, // Set the width
      decoration: BoxDecoration(
        color: Colors.white, // White background
        borderRadius: BorderRadius.circular(20), // Round border with a radius
        // border: Border.all(
        //   color: Colors.black, // Border color (can be changed)
        //   width: 2, // Border width
        // ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  height: 70,
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
                  style: TextStyle(fontSize: 24, color: Color(0xFF007BFF)),
                )
              ],
            ),
            Container(
              height: 465, // Set the height
              width: 395, // Set the width
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
                    height: 366,
                    width: 345,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 32,
                          width: 345,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                height: 32,
                                width: 63,
                                child: Text(
                                  'YaoUnde',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 18.0),
                                child: Image.asset(
                                  "assets/minibus.png",
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              const SizedBox(
                                height: 32,
                                width: 63,
                                child: Text(
                                  'Douala',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            widget.loacationVisible
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
                            widget.loacationVisible
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
                            height: 32,
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
                          height: 10,
                        ),
                        SizedBox(
                          height: 32,
                          width: 345,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              SizedBox(
                                height: 32,
                                width: 111,
                                child: Text(
                                  'DepartureTime',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 32,
                                width: 70,
                                child: Text(
                                  '5:00 AM',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 32,
                          width: 345,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              SizedBox(
                                height: 32,
                                width: 61,
                                child: Text(
                                  'Duration',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 32,
                                width: 50,
                                child: Text(
                                  '5h30m',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 16,
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
                          height: 32,
                          width: 345,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              SizedBox(
                                height: 32,
                                width: 90,
                                child: Text(
                                  'Arrival Time',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 32,
                                width: 70,
                                child: Text(
                                  '10:30 AM',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 16,
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
                          height: 32,
                          width: 345,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              SizedBox(
                                height: 32,
                                width: 50,
                                child: Text(
                                  'Class',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 32,
                                width: 50,
                                child: Text(
                                  'V.V.I.P',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 16,
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
                          height: 32,
                          width: 345,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              SizedBox(
                                height: 32,
                                width: 75,
                                child: Text(
                                  'Amenities',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 32,
                                width: 140,
                                child: Text(
                                  'Wi-Fi,Refreshments',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 16,
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
                          height: 32,
                          width: 345,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              SizedBox(
                                height: 32,
                                width: 150,
                                child: Text(
                                  'Available Seats',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 32,
                                width: 40,
                                child: Text(
                                  '7/30',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 16,
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
                          height: 32,
                          width: 345,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              SizedBox(
                                height: 32,
                                width: 150,
                                child: Text(
                                  'Price per ticket',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 32,
                                width: 84,
                                child: Text(
                                  '15000 XAF',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 16,
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
                      height: 60,
                      width: 300,
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

class RoundedBox extends StatefulWidget {
  double borderWidth;
  Color backgroundColor;
  Color borderColor;
  Color textColor;
  Color checkboxColor;
  double containerHeight;
  double containerWidth;
  String textData;
  IconData trailingicons;
  IconData leadingicons;
  bool isTrailingIcon;
  bool isLeadingIcon;
  bool radioButtonChecked;
  bool applyborder;
  double fontSize;
  double iconSize;

  RoundedBox({
    this.textColor = Colors.black,
    this.checkboxColor = const Color(0xFF007BFF),
    this.borderWidth = 0,
    this.backgroundColor = Colors.transparent,
    this.containerHeight = 70,
    this.containerWidth = 160,
    this.textData = '',
    this.isTrailingIcon = false,
    this.isLeadingIcon = false,
    this.radioButtonChecked = false,
    this.applyborder = false,
    this.borderColor = Colors.black,
    this.trailingicons = Icons.check,
    this.leadingicons = Icons.radio_button_unchecked,
    this.fontSize = 20,
    this.iconSize = 30,
  });

  @override
  State<RoundedBox> createState() => _RoundedBoxState();
}

class _RoundedBoxState extends State<RoundedBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: widget.applyborder
              ? widget.borderColor
              : Colors.transparent, // Border color
          width: widget.borderWidth, // Border width
        ), // Adjust the radius as needed
      ),
      height: widget.containerHeight,
      width: widget.containerWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          widget.isLeadingIcon
              ? widget.radioButtonChecked
                  ? Icon(
                      Icons.radio_button_checked,
                      size: 30,
                      color: widget.checkboxColor,
                    )
                  : const Icon(
                      Icons.radio_button_unchecked,
                      color: Colors.grey,
                      size: 30,
                    )
              : const SizedBox(),
          const SizedBox(
            width: 10,
          ),
          Text(widget.textData,
              style: GoogleFonts.roboto(
                fontSize: widget.fontSize,
                fontWeight: FontWeight.w300,
                color: widget.textColor,
              )),
          // const SizedBox(
          //   width: 20,
          // ),
          const SizedBox(
            width: 5,
          ),
          widget.isTrailingIcon
              ? Icon(
                  widget.trailingicons,
                  size: widget.iconSize,
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
