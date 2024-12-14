import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondSection extends StatefulWidget {
  const SecondSection({super.key});

  @override
  State<SecondSection> createState() => _SecondSectionState();
}

class _SecondSectionState extends State<SecondSection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 68,
          ),
          Heading(
            text: "Our Partners",
          ),
          const SizedBox(
            height: 20,
          ),
          Paragraph2(),
          const SizedBox(
            height: 50,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: 1650,
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
                      10,
                      (index) => Column(
                        children: [
                          ElevatedCard(
                            cardTitle: index % 2 == 0
                                ? "FINEXS Voyage"
                                : "United Express",
                            assetName: index % 2 == 0
                                ? "assets/Finex4.png"
                                : "assets/United.png",
                            imagewidth: index % 2 == 0 ? 70 : 126,
                            imageheight: index % 2 == 0 ? 60 : 40,
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

class ElevatedCard extends StatefulWidget {
  double width;
  double height;
  double imagewidth;
  double imageheight;
  String assetName;
  String cardTitle;
  double fontSize;
  Color fontColor;
  FontWeight fontWeight;
  ElevatedCard({
    super.key,
    this.height = 85,
    this.width = 310,
    this.imageheight = 60,
    this.imagewidth = 70,
    this.assetName = '',
    this.cardTitle = '',
    this.fontSize = 18,
    this.fontColor = Colors.black,
    this.fontWeight = FontWeight.w900,
  });

  @override
  State<ElevatedCard> createState() => _ElevatedCardState();
}

class _ElevatedCardState extends State<ElevatedCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: const Color.fromARGB(255, 247, 244, 244),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), // Rounded corners
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15), // Apply rounded corners
        child: Container(
          width: widget.width,
          height: widget.height,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.assetName == ''
                  ? const SizedBox()
                  : Image.asset(
                      widget.assetName,
                      width: widget.imagewidth, // Set width
                      height: widget.imageheight, // Set height
                      fit: BoxFit.cover,
                    ),
              const SizedBox(width: 10),
              Text(
                widget.cardTitle,
                style: GoogleFonts.roboto(
                  fontSize: widget.fontSize,
                  fontWeight: widget.fontWeight,
                  color: widget.fontColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Paragraph2 extends StatelessWidget {
  final String text;
  final double containerHeight;
  final double containerWidth;
  FontWeight fontWeight;
  double fontSize;
  Paragraph2({
    super.key,
    this.text = '',
    this.containerHeight = 96,
    this.containerWidth = 720,
    this.fontWeight = FontWeight.w300,
    this.fontSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: containerWidth,
      height: containerHeight,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: GoogleFonts.roboto(
            fontSize: fontSize,
            fontWeight: fontWeight,
            height: 26 / 17,
            color: Colors.black, // Default color for the paragraph
          ),
          children: const [
            TextSpan(
              text: 'At ',
            ),
            TextSpan(
              text: 'Cam',
              style: TextStyle(
                color: Color(0xFF007BFF),
                fontWeight: FontWeight.w900,
              ),
            ),
            TextSpan(
              text: 'Voyage',
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.w900,
              ),
            ),
            TextSpan(
                text:
                    ', we are proud to collaborate with a variety of trusted bus agencies to provide you with the best travel options available. Our partners are committed to delivering safe, reliable, and comfortable journeys across various routes.')
          ],
        ),
      ),
    );
  }
}

class Paragraph extends StatefulWidget {
  double height;
  double width;
  String text;
  TextAlign? textalign;
  Paragraph(
      {super.key,
      this.height = 96,
      this.width = 724,
      this.text = '',
      textalign = TextAlign.center});

  @override
  State<Paragraph> createState() => _ParagraphState();
}

class _ParagraphState extends State<Paragraph> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: Text(
        widget.text,
        textAlign: TextAlign.center,
        // textAlign: widget.textalign,
        style: const TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontFamily: 'RobotoLight',
            fontWeight: FontWeight.w100,
            height: 26 / 17),
      ),
    );
  }
}

// ignore: must_be_immutable
class Heading extends StatefulWidget {
  String? text;
  double fontSize;
  Color color;
  // ignore: use_key_in_widget_constructors
  Heading({
    this.text,
    this.fontSize = 40,
    this.color = const Color(0xFF007BFF),
  });

  @override
  State<Heading> createState() => _HeadingState();
}

class _HeadingState extends State<Heading> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 32,

      child: Center(
        child: Text(
          widget.text!,
          style: GoogleFonts.roboto(
            fontSize: widget.fontSize,
            color: widget.color,
            fontWeight: FontWeight.w500,
            wordSpacing: 0,
          ),
        ),
      ),
    );
  }
}
