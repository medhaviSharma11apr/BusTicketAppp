import 'package:busticketapp/secondSection.dart';
import 'package:flutter/material.dart';

class OurPartner extends StatefulWidget {
  const OurPartner({super.key});

  @override
  State<OurPartner> createState() => _OurPartnerState();
}

class _OurPartnerState extends State<OurPartner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Heading(
            text: "Our Partners",
            fontSize: 16,
            color: const Color(0xFF007BFF),
          ),
          const SizedBox(
            height: 10,
          ),
          Paragraph2(
            fontSize: 12,
            containerHeight: 120,
            containerWidth: 325,
            fontWeight: FontWeight.w300,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 1.5,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      // flex: 5,
                      child: Wrap(
                    runSpacing: 4,
                    spacing: 10,
                    children: List.generate(
                      8,
                      (index) => Column(
                        children: [
                          ElevatedCard(
                            height: 52,
                            width: 186,
                            cardTitle: index % 2 == 0
                                ? "FINEXS Voyage"
                                : "United Express",
                            assetName: index % 2 == 0
                                ? "assets/Finex4.png"
                                : "assets/United.png",
                            imagewidth: index % 2 == 0 ? 35 : 42,
                            imageheight: index % 2 == 0 ? 35 : 20,
                            fontSize: 12,
                            fontColor: const Color(0xFF007BFF),
                            fontWeight: FontWeight.w700,
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
