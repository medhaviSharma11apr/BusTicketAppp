import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  bool selectBook = false;
  bool selectSchedule = false;
  bool selectTicket = false;
  bool selectSupport = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFEBF5FF),
      ),
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 12,
          bottom: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MouseRegion(
              onEnter: (_) {
                log('here');
                setState(() {
                  selectBook = true;
                });
              },
              onExit: (_) {
                setState(() {
                  selectBook = false;
                });
              },
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Column(
                  children: [
                    Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/Mobile/si_home-fill4x.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    TextBottomNavBar(
                      text: 'Book',
                      colorBlue: selectBook,
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/schedule');
              },
              child: Column(
                children: [
                  Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent,
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/Mobile/mingcute_calendar-time-add-line.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  TextBottomNavBar(
                    text: 'Schedule',
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/ticket');
              },
              child: Column(
                children: [
                  Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent,
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/Mobile/ion_ticket-outline.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  TextBottomNavBar(
                    text: 'Ticket',
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/Mobile/fluent_person-support-16-regular.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                TextBottomNavBar(
                  text: 'Support',
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class TextBottomNavBar extends StatelessWidget {
  String text;
  bool colorBlue;
  TextBottomNavBar({super.key, this.text = '', this.colorBlue = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 18,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: colorBlue ? const Color(0xFF007BFF) : Colors.black),
          ),
        ),
      ),
    );
  }
}
