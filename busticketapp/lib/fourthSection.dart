import 'package:busticketapp/secondSection.dart';
import 'package:flutter/material.dart';

class FourthSection extends StatefulWidget {
  const FourthSection({super.key});

  @override
  State<FourthSection> createState() => _FourthSectionState();
}

class _FourthSectionState extends State<FourthSection> {
  bool buttonChecked = false;
  bool buttonChecked2 = true;
  String errormsg = '';
  TextEditingController referenceNumberController = TextEditingController();

  void validateForm() {
    setState(() {
      if (referenceNumberController.text.isEmpty) {
        errormsg = "Reference number cannot be empty";
      } else {
        errormsg = '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color(0xFFE7F3FF),
        // borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          Heading(
            text: "Ticket Management",
          ),
          const SizedBox(
            height: 20,
          ),
          Paragraph(
            width: 711,
            text:
                'Our Ticket Management system provides you with a seamless way to retrieve, manage, and interact with your purchased tickets. Gain access by entering your Ticket Reference Number or Phone Number to Receive OTP.',
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    buttonChecked = false;
                    buttonChecked2 = !buttonChecked2;
                  });
                },
                child: Icon(
                  buttonChecked2
                      ? Icons.radio_button_checked
                      : Icons.radio_button_unchecked,
                  color: buttonChecked2 ? const Color(0xFF007BFF) : Colors.grey,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Retrieve active tickets',
                style: TextStyle(
                  color: buttonChecked2 ? Colors.black : Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    buttonChecked2 = false;
                    buttonChecked = !buttonChecked;
                  });
                },
                child: Icon(
                  buttonChecked
                      ? Icons.radio_button_checked
                      : Icons.radio_button_unchecked,
                  color: buttonChecked ? const Color(0xFF007BFF) : Colors.grey,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Retrieve past tickets',
                style: TextStyle(
                  color: buttonChecked ? Colors.black : Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 70,
            width: 630,
            child: TextField(
              controller: referenceNumberController,
              decoration: InputDecoration(
                  errorText: errormsg,
                  // errorBorder: const OutlineInputBorder(
                  //   borderSide: BorderSide(
                  //       color: Colors.red,
                  //       width: 2), // Red border when there's an error
                  // ),
                  contentPadding: const EdgeInsets.only(
                    left: 25,
                  ),
                  fillColor: Colors.white, // Set background color
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'Enter ticket reference number',
                  suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Tooltip(
                          message: 'Info',
                          child: Image.asset(
                            'assets/information.png',
                          )))),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: InkWell(
              onTap: () {
                validateForm();
              },
              child: Container(
                height: 60,
                width: 620,
                decoration: BoxDecoration(
                  color: const Color(0xFF007BFF), // White background
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    'Proceed',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
