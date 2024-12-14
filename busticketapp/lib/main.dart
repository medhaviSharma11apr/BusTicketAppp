// ignore_for_file: deprecated_member_use

import 'dart:developer';
import 'package:busticketapp/MobileApp/mainPage.dart';
import 'package:busticketapp/MobileApp/scheduleSection.dart';
import 'package:busticketapp/MobileApp/ticketManagement.dart';
import 'package:busticketapp/contactUsSection.dart';
import 'package:busticketapp/customDropDown.dart';
import 'package:busticketapp/fifthSection.dart';
import 'package:busticketapp/fourthSection.dart';
import 'package:busticketapp/secondSection.dart';
import 'package:busticketapp/sixthSection.dart';
import 'package:busticketapp/thirdSection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
      ),
      initialRoute: '/',
      routes: {
        '/schedule': (context) => const ScheduleSection(),
        '/home': (context) => const MainMobileView(),
        '/ticket': (context) => const TicketManagement(),
      },
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(
          builder: ((BuildContext context, BoxConstraints constraints) {
        bool smallScreen = constraints.maxWidth < 1024;

        return smallScreen ? const MainMobileView() : const MyHomePage();
      })),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController _scrollController = ScrollController();
  // Gloabal Key

  // Define GlobalKeys
  final GlobalKey _secondSectionKey = GlobalKey();
  final GlobalKey _fifthSectionKey = GlobalKey();
  final GlobalKey _thirdSectionKey = GlobalKey();
  final GlobalKey _firstSectionKey = GlobalKey();
  final GlobalKey _fourthSectionKey = GlobalKey();
  final GlobalKey _sixthSectionKey = GlobalKey();
  final GlobalKey _contactUsSectionKey = GlobalKey();
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void scrollToWidget(double offset, int millisecond) {
    _scrollController.animateTo(
      offset,
      duration: Duration(milliseconds: millisecond), // Smooth scrolling
      curve: Curves.easeInOut, // Easing curve
    );
  }

  double calculateOffset(GlobalKey key) {
    final RenderBox? renderBox =
        key.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      return renderBox.localToGlobal(Offset.zero).dy +
          _scrollController.offset; // Account for current scroll position
    }
    return 0.0; // Default offset if key is null
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // const SliderOnPress(),
            FirstSection(
              key: _firstSectionKey,
              scrollToWidget: scrollToWidget,
              calculateOffset: calculateOffset,
              secondSectionKey: _secondSectionKey,
              thirdSectionKey: _thirdSectionKey,
              fifthSectionKey: _fifthSectionKey,
              fourthSectionKey: _fourthSectionKey,
            ),
            SecondSection(
              key: _secondSectionKey,
            ),
            const SizedBox(
              height: 20,
            ),
            ThirdSection(
              key: _thirdSectionKey,
            ),

            FourthSection(
              key: _fourthSectionKey,
            ),

            FifthSection(
              key: _fifthSectionKey,
            ),
            SixthSection(
              key: _sixthSectionKey,
            ),
            ContactUsSection(
              key: _contactUsSectionKey,
            ),
            Container(
              decoration: const BoxDecoration(color: Color(0xFFFFC107)),
              height: 300,
            )
          ],
        ),
      ),
    );
  }
}

class FirstSection extends StatefulWidget {
  FirstSection({
    super.key,
    required this.scrollToWidget,
    required this.calculateOffset,
    required this.secondSectionKey,
    required this.thirdSectionKey,
    required this.fourthSectionKey,
    required this.fifthSectionKey,
  });
  final Function calculateOffset;
  Function scrollToWidget;
  GlobalKey secondSectionKey;
  GlobalKey thirdSectionKey;
  GlobalKey fourthSectionKey;
  GlobalKey fifthSectionKey;

  @override
  State<FirstSection> createState() => _FirstSectionState();
}

class _FirstSectionState extends State<FirstSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 850,
      // height: MediaQuery.of(context).size.height * 0.9,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        // borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
        image: DecorationImage(
          image: AssetImage("assets/AerialDrone.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          TopNavBAr(
            scrollToWidget: widget.scrollToWidget,
            calculateOffset: widget.calculateOffset,
            secondSectionKey: widget.secondSectionKey,
            thirdSectionKey: widget.thirdSectionKey,
            fifthSectionKey: widget.fifthSectionKey,
            fourtSectionKey: widget.fourthSectionKey,
          ),
          const DestinationSelector(),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class TopNavBAr extends StatefulWidget {
  TopNavBAr({
    super.key,
    required this.scrollToWidget,
    required this.calculateOffset,
    required this.secondSectionKey,
    required this.thirdSectionKey,
    required this.fourtSectionKey,
    required this.fifthSectionKey,
  });
  Function scrollToWidget;
  final Function calculateOffset;
  GlobalKey secondSectionKey;
  GlobalKey thirdSectionKey;
  GlobalKey fourtSectionKey;
  GlobalKey fifthSectionKey;
  @override
  State<TopNavBAr> createState() => _TopNavBArState();
}

class _TopNavBArState extends State<TopNavBAr> {
  void _launchURL() async {
    const url =
        'https://depaammm1.netlify.app/#/'; // Replace with the URL you want to open
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      await launch(url); // Open the URL in the browser
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 110, left: 110),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              _launchURL();
            },
            child: Container(
              height: 94,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                image: const DecorationImage(
                  image: AssetImage("assets/Full Logo4x.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              widget.scrollToWidget;
            },
            child: HoverUnderlineText(
              underlineWidth: 150,
              text: "Book Your Trip",
              onTap: () => widget.scrollToWidget(150),
            ),
          ),
          HoverUnderlineText(
            text: "Schedules",
            underlineWidth: 95,
            // onTap: () => widget.scrollToWidget(850),
            onTap: () => widget.scrollToWidget(
                widget.calculateOffset(
                  widget.thirdSectionKey,
                ),
                1000),
          ),
          HoverUnderlineText(
            text: "Ticket Management",
            underlineWidth: 180,
            // onTap: () => widget.scrollToWidget(1200),
            onTap: () => widget.scrollToWidget(
                widget.calculateOffset(
                  widget.fourtSectionKey,
                ),
                2000),
          ),
          HoverUnderlineText(
            text: "Support",
            underlineWidth: 73,
            // onTap: () => widget.scrollToWidget(1600),
            onTap: () => widget.scrollToWidget(
                widget.calculateOffset(
                  widget.fifthSectionKey,
                ),
                2500),
          ),
          Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/Language4x.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                          // height: 25,
                          child: Text("Eng",
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black))),
                      SizedBox(
                        height: 25,
                        width: 25,
                        child: Image.asset(
                          'assets/ArrowDown.png',
                          fit: BoxFit.contain,
                          height: 5,
                          width: 25,
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class HoverUnderlineText extends StatefulWidget {
  String text;
  double underlineWidth;
  final VoidCallback onTap;
  HoverUnderlineText(
      {super.key,
      this.text = '',
      this.underlineWidth = 100,
      required this.onTap});
  @override
  _HoverUnderlineTextState createState() => _HoverUnderlineTextState();
}

class _HoverUnderlineTextState extends State<HoverUnderlineText> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Main Text
            SizedBox(
              height: 30,
              child: Text(widget.text,
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0.2,
                    color: Colors.white,

                    decorationThickness:
                        3.0, // Optional: Set thickness of the underline
                  )),
            ),

            if (_isHovered)
              Positioned(
                bottom: 0,
                child: Container(
                  width: widget.underlineWidth,
                  height: 4,
                  color: const Color(0xFF007BFF),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class DestinationSelector extends StatefulWidget {
  const DestinationSelector({super.key});

  @override
  State<DestinationSelector> createState() => _DestinationSelectorState();
}

class _DestinationSelectorState extends State<DestinationSelector> {
  String? fromError;
  String? toError;
  String? departureDateError;
  String? returnDateError;
  String? seatsError;
  String? timeError;
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();
  bool showRedborder = false;
  bool showRedborderto = false;
  TextEditingController classController = TextEditingController();
  bool showRedborclass = false;
  TextEditingController triptypeController = TextEditingController();
  bool showRedbordertriptype = false;
  TextEditingController nosController = TextEditingController();
  bool showRedbordernos = false;
  TextEditingController ptController = TextEditingController();
  bool showRedborderpt = false;
  TextEditingController agencyController = TextEditingController();
  bool showRedbordeagency = false;
  TextEditingController departureController = TextEditingController();
  TextEditingController returnController = TextEditingController();
  void validateForm() {
    setState(() {
      // Reset errors before validation
      fromError = null;
      toError = null;
      departureDateError = null;
      returnDateError = null;
      seatsError = null;
      timeError = null;

      if (fromController.text.isEmpty) {
        log('here');
        fromError = "Please select a departure location";
        showRedborder = true;
      } else {
        showRedborder = false;
      }

      // Validation for "To" field
      if (toController.text.isEmpty) {
        toError = "Please select a destination";
        showRedborderto = true;
      } else {
        showRedborderto = false;
      }

      // Validation for "Departure Date"
      if (classController.text.isEmpty) {
        showRedborclass = true;
      } else {
        showRedborclass = false;
      }

      // Validation for "Return Date"
      if (triptypeController.text.isEmpty) {
        returnDateError = "Please select a return date";
        showRedbordertriptype = true;
      } else {
        showRedbordertriptype = false;
      }
      if (nosController.text.isEmpty) {
        returnDateError = "Please select a return date";
        showRedbordernos = true;
      } else {
        showRedbordernos = false;
      }
      if (ptController.text.isEmpty) {
        returnDateError = "Please select a return date";
        showRedborderpt = true;
      } else {
        showRedborderpt = false;
      }
      if (agencyController.text.isEmpty) {
        returnDateError = "Please select a return date";
        showRedbordeagency = true;
      } else {
        showRedbordeagency = false;
      }
      if (departureController.text.isEmpty) {
        departureDateError = "Please select a departure date";
      }
      if (fromError == null &&
          toError == null &&
          departureDateError == null &&
          returnDateError == null &&
          seatsError == null &&
          timeError == null) {
        print("Booking confirmed!");
        // Proceed with booking logic
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            "WELCOME ONBOARD",
            style: GoogleFonts.roboto(
              color: Colors.white.withOpacity(0.7),
              fontWeight: FontWeight.normal,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "What's Your Destination?",
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 48,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyOwnDropDown(
                opacity: 0.8,
                text1: 'From:',
                text2: 'Yaounde',
                width: 300,
                controller: fromController,

                showRedborder: showRedborder,
                // icons: Icons.keyboard_arrow_down_sharp,
              ),
              const SizedBox(
                width: 25,
              ),
              MyOwnDropDown(
                text1: 'To:',
                text2: 'City',
                width: 300,
                controller: toController,
                showRedborder: showRedborderto,
                // icons: Icons.keyboard_arrow_down_sharp,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyOwnDropDown(
                text2: 'Departure Date',
                text1: '',
                errorText: departureDateError ?? '',
                width: 300,
                image: 'assets/uit_calender.png',
                // icons: Icons.calendar_today,
              ),
              const SizedBox(
                width: 25,
              ),
              MyOwnDropDown(
                text1: 'Class:',
                text2: 'Regular',
                width: 300,
                controller: classController,
                showRedborder: showRedborclass,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyOwnDropDown(
                text1: 'Trip type:',
                text2: 'One way',
                width: 300,
                controller: triptypeController,
                showRedborder: showRedbordertriptype,
              ),
              const SizedBox(
                width: 25,
              ),
              MyOwnDropDown(
                text2: 'Return date',
                text1: '',
                width: 300,
                image: 'assets/uit_calender.png',
                opacity: 0.4,
                errorText: returnDateError ?? '',
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyOwnDropDown(
                text1: 'Number of Seats:',
                text2: '1',
                width: 625,
                controller: nosController,
                showRedborder: showRedbordernos,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyOwnDropDown(
                text1: '',
                text2: 'Preffered time',
                width: 300,
                showRedborder: showRedborderpt,
                controller: ptController,
              ),
              const SizedBox(
                width: 25,
              ),
              MyOwnDropDown(
                text1: '',
                text2: 'Available agencies',
                width: 300,
                showRedborder: showRedbordeagency,
                controller: agencyController,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 50,
            width: 625,
            child: ElevatedButton(
              onPressed: validateForm,
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      15,
                    ), // Set border radius here
                  ),
                  backgroundColor: const Color(0xFF007BFF)),
              child: const Center(
                child: Text('BooK Your Trip'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
