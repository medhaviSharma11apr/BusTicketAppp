import 'package:flutter/material.dart';
import 'package:busticketapp/secondSection.dart';

class FifthSection extends StatefulWidget {
  const FifthSection({super.key});

  @override
  State<FifthSection> createState() => _FifthSectionState();
}

class _FifthSectionState extends State<FifthSection> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;

        // Define breakpoints
        final isTablet = screenWidth >= 600 && screenWidth < 1024;
        final isDesktop = screenWidth >= 1024;

        return Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Heading(
                color: Colors.black,
                text: 'FAQ & Support',
              ),
              const SizedBox(height: 20),
              Paragraph(
                // textalign: TextAlign.start,
                height: 128,
                width: isDesktop ? 800 : screenWidth * 0.3,
                text:
                    'Here, you can find the assistance you need to make your travel experience seamless. Whether you have questions about bookings, need help with ticket management, or require support with any other issues, we’re here to help. Browse through our resources, or reach out to our dedicated support team for personalized assistance. Your journey is important to us, and we’re committed to providing you with the best service possible.',
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: isDesktop
                    ? _buildRowForDesktop()
                    : isTablet
                        ? _buildRowForTablet()
                        : _buildRowForMobile(),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildRowForDesktop() {
    return Row(
      children: [
        _buildColumnWithContent(),
        _buildColumnWithContent(),
        _buildColumnWithContent(),
      ],
    );
  }

  Widget _buildRowForTablet() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildColumnWithContent(),
            _buildColumnWithContent(),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildColumnWithContent(),
          ],
        ),
      ],
    );
  }

  Widget _buildRowForMobile() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildColumnWithContent(),
        const SizedBox(height: 20),
        _buildColumnWithContent(),
        const SizedBox(height: 20),
        _buildColumnWithContent(),
      ],
    );
  }

  Widget _buildColumnWithContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadingTwo(),
        const SizedBox(height: 10),
        ParagraphTwo(
          textalign: TextAlign.start,
          height: 128,
          width: MediaQuery.of(context).size.width * 0.30,
          text:
              'Yes, you can change or cancel your booking, but the specific policies may vary depending on the bus agency and the type of ticket purchased.',
        ),
        const SizedBox(height: 10),
        const HeadingTwo(),
        const SizedBox(height: 10),
        ParagraphTwo(
          textalign: TextAlign.start,
          height: 128,
          width: MediaQuery.of(context).size.width * 0.30,
          text:
              'Yes, you can change or cancel your booking, but the specific policies may vary depending on the bus agency and the type of ticket purchased.',
        ),
      ],
    );
  }
}

class HeadingTwo extends StatelessWidget {
  const HeadingTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 30,
          height: 32,
          child: Text(
            '01',
            style: TextStyle(
                fontSize: 24, fontFamily: "Roboto", color: Colors.blue),
          ),
        ),
        const SizedBox(width: 5),
        SizedBox(
          height: 32,
          width: MediaQuery.of(context).size.width * 0.28,
          child: const Text(
            'Can I change or cancel my booking?',
            style: TextStyle(
                fontSize: 24, fontFamily: "Roboto", color: Colors.black),
          ),
        ),
      ],
    );
  }
}

class ParagraphTwo extends StatefulWidget {
  double height;
  double width;
  String text;
  TextAlign? textalign;
  ParagraphTwo(
      {super.key,
      this.height = 96,
      this.width = 724,
      this.text = '',
      textalign = TextAlign.center});

  @override
  State<ParagraphTwo> createState() => _ParagraphTwoState();
}

class _ParagraphTwoState extends State<ParagraphTwo> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: Text(
        widget.text,
        textAlign: TextAlign.start,
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



// import 'package:busticketapp/secondSection.dart';
// import 'package:flutter/material.dart';

// class FifthSection extends StatefulWidget {
//   const FifthSection({super.key});

//   @override
//   State<FifthSection> createState() => _FifthSectionState();
// }

// class _FifthSectionState extends State<FifthSection> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           const SizedBox(
//             height: 20,
//           ),
//           Heading(
//             color: Colors.black,
//             text: 'FAQ & Support',
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           Paragraph(
//             height: 128,
//             width: 1047,
//             text:
//                 'Here, you can find the assistance you need to make your travel experience seamless. Whether you have questions about bookings, need help with ticket management, or require support with any other issues, we’re here to help. Browse through our resources, or reach out to our dedicated support team for personalized assistance. Your journey is important to us, and we’re committed to providing you with the best service possible.',
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(
//               right: 24,
//               left: 24,
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Column(
//                   children: [
//                     const HeadingTwo(),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Paragraph(
//                       textalign: TextAlign.start,
//                       height: 128,
//                       width: 348,
//                       text:
//                           'Yes, you can change or cancel your booking, but the specific policies may vary depending on the bus agency and the type of ticket purchased.',
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     const HeadingTwo(),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Paragraph(
//                       textalign: TextAlign.start,
//                       height: 128,
//                       width: 348,
//                       text:
//                           'Yes, you can change or cancel your booking, but the specific policies may vary depending on the bus agency and the type of ticket purchased.',
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     const HeadingTwo(),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Paragraph(
//                         textalign: TextAlign.start,
//                         height: 200,
//                         width: 348,
//                         text:
//                             'Yes, you can change or cancel your booking, but the specific policies may vary depending on the bus agency and the type of ticket purchased. Yes, you can change or cancel your booking, but the specific policies may vary depending on the bus agency and the type of ticket purchased.'),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     const HeadingTwo(),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Paragraph(
//                         textalign: TextAlign.start,
//                         height: 128,
//                         width: 348,
//                         text:
//                             'Yes, you can change or cancel your booking, but the specific policies may vary depending on the bus agency and the type of ticket purchased.'),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     const HeadingTwo(),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Paragraph(
//                         textalign: TextAlign.start,
//                         height: 128,
//                         width: 348,
//                         text:
//                             'Yes, you can change or cancel your booking, but the specific policies may vary depending on the bus agency and the type of ticket purchased.'),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     const HeadingTwo(),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Paragraph(
//                         textalign: TextAlign.start,
//                         height: 128,
//                         width: 348,
//                         text:
//                             'Yes, you can change or cancel your booking, but the specific policies may vary depending on the bus agency and the type of ticket purchased.'),
//                   ],
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class HeadingTwo extends StatefulWidget {
//   const HeadingTwo({super.key});

//   @override
//   State<HeadingTwo> createState() => _HeadingTwoState();
// }

// class _HeadingTwoState extends State<HeadingTwo> {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: const [
//         SizedBox(
//           width: 30,
//           height: 32,
//           child: Text(
//             '01',
//             style: TextStyle(
//                 fontSize: 24, fontFamily: "Roboto", color: Colors.blue),
//           ),
//         ),
//         SizedBox(
//           width: 5,
//         ),
//         SizedBox(
//           height: 32,
//           width: 390,
//           child: Text(
//             'Can I change or cancel my booking?',
//             style: TextStyle(
//                 fontSize: 24, fontFamily: "Roboto", color: Colors.black),
//           ),
//         ),
//       ],
//     );
//   }
// }
