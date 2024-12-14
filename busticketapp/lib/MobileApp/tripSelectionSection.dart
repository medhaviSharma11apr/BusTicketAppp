import 'package:busticketapp/customDropDown.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TripSelectionSection extends StatefulWidget {
  const TripSelectionSection({super.key});

  @override
  State<TripSelectionSection> createState() => _TripSelectionSectionState();
}

class _TripSelectionSectionState extends State<TripSelectionSection> {
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
      }
    });
  }

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
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'WELCOME ONBOARD',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'What’s Your Destination?',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyOwnDropDown(
                containerHeight: 46,
                width: 160,
                text1: 'From:',
                text2: 'Yaounde',
                fontSize: 13,
                borderRadius: 20,
                image: 'assets/Mobile/lets-icons_expand-up-light4x.png',
                imageHeight: 30,
                imageWidth: 30,
                controller: fromController,
                errorText: fromError,
                showRedborder: showRedborder,
                opacity: 1,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              MyOwnDropDown(
                borderRadius: 20,
                containerHeight: 46,
                width: 160,
                text1: 'To:',
                text2: 'City',
                fontSize: 13,
                image: 'assets/Mobile/lets-icons_expand-up-light4x.png',
                imageHeight: 30,
                imageWidth: 30,
                controller: toController,
                errorText: toError,
                opacity: 1,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyOwnDropDown(
                containerHeight: 46,
                width: 160,
                text1: '',
                text2: 'Departure date',
                image: 'assets/Mobile/uit_calender512w.png',
                fontSize: 13,
                borderRadius: 20,
                imageHeight: 20,
                imageWidth: 20,
                controller: departureController,
                errorText: departureDateError,
                opacity: 1,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              MyOwnDropDown(
                borderRadius: 20,
                containerHeight: 46,
                width: 160,
                text1: 'Class:',
                text2: 'Regular',
                fontSize: 13,
                image: 'assets/Mobile/lets-icons_expand-up-light4x.png',
                imageHeight: 30,
                imageWidth: 30,
                controller: classController,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyOwnDropDown(
                containerHeight: 46,
                width: 160,
                text1: '',
                text2: 'Trip type 1 way',
                fontSize: 13,
                borderRadius: 20,
                image: 'assets/Mobile/lets-icons_expand-up-light4x.png',
                imageHeight: 30,
                imageWidth: 30,
                controller: triptypeController,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              MyOwnDropDown(
                borderRadius: 20,
                containerHeight: 46,
                width: 160,
                text1: '',
                text2: 'Return date',
                fontSize: 13,
                image: 'assets/Mobile/lets-icons_expand-up-light4x.png',
                imageHeight: 30,
                imageWidth: 30,
                controller: returnController,
                errorText: returnDateError,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyOwnDropDown(
                containerHeight: 46,
                width: 330,
                text1: 'Number of seats:',
                text2: '1',
                fontSize: 13,
                borderRadius: 20,
                image: 'assets/Mobile/lets-icons_expand-up-light4x.png',
                imageHeight: 30,
                imageWidth: 30,
                controller: nosController,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyOwnDropDown(
                containerHeight: 46,
                width: 330,
                text1: '',
                text2: 'Preferred travel time',
                fontSize: 13,
                borderRadius: 20,
                image: 'assets/Mobile/lets-icons_expand-up-light4x.png',
                imageHeight: 30,
                imageWidth: 30,
                controller: ptController,
                errorText: timeError,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: 330,
            child: ElevatedButton(
              onPressed: (() => validateForm()),
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
