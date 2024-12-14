import 'package:busticketapp/MobileApp/bottomNavigationBar.dart';
import 'package:busticketapp/MobileApp/ourPartner.dart';
import 'package:busticketapp/MobileApp/tripSelectionSection.dart';
import 'package:flutter/material.dart';

class MainMobileView extends StatefulWidget {
  const MainMobileView({super.key});

  @override
  State<MainMobileView> createState() => _MainMobileViewState();
}

class _MainMobileViewState extends State<MainMobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 550,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage("assets/AerialDrone.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 16.0,
                      right: 20,
                      left: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 35,
                          width: 60,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/Mobile/Full Logo14x.png",
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.07,
                          decoration: const BoxDecoration(
                            // color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/Mobile/ic_baseline-menu.png"),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const TripSelectionSection(),
                ],
              ),
            ),
            const OurPartner(),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}
