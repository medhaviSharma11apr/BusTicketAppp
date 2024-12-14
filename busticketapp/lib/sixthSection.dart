import 'package:busticketapp/secondSection.dart';
import 'package:flutter/material.dart';

class SixthSection extends StatefulWidget {
  const SixthSection({super.key});

  @override
  State<SixthSection> createState() => _SixthSectionState();
}

class _SixthSectionState extends State<SixthSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset(
            'assets/Line111.png',
            width: MediaQuery.of(context).size.width * 0.39,
          ),
          const Spacer(),
          Heading(
            text: 'Contact Us',
            color: Colors.black,
          ),
          const Spacer(),
          Image.asset(
            'assets/Line222.png',
            width: MediaQuery.of(context).size.width * 0.39,
          )
        ],
      ),
    );
  }
}
