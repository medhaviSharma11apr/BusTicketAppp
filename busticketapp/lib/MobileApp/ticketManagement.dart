import 'package:busticketapp/MobileApp/bottomNavigationBar.dart';
import 'package:flutter/material.dart';

class TicketManagement extends StatefulWidget {
  const TicketManagement({super.key});

  @override
  State<TicketManagement> createState() => _TicketManagementState();
}

class _TicketManagementState extends State<TicketManagement> {
  bool buttonChecked = false;
  bool buttonChecked2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFEEEEEE),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Ticket Management',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF007BFF),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: const Paragraph2(),
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
                        buttonChecked = false;
                        buttonChecked2 = !buttonChecked2;
                      });
                    },
                    child: Icon(
                      buttonChecked2
                          ? Icons.radio_button_checked
                          : Icons.radio_button_unchecked,
                      color: buttonChecked2
                          ? const Color(0xFF007BFF)
                          : Colors.grey,
                      size: 15,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Retrieve active tickets',
                    style: TextStyle(
                      color: buttonChecked2 ? Colors.black : Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
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
                      color: buttonChecked
                          ? const Color(0xFF007BFF)
                          : const Color.fromARGB(255, 233, 229, 229),
                      size: 15,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Retrieve past tickets',
                    style: TextStyle(
                      color: buttonChecked
                          ? Colors.black
                          : const Color.fromARGB(255, 227, 226, 226),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30.0, right: 30),
                child: CustomInputField(),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0xFF007BFF),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

class CustomInputField extends StatefulWidget {
  const CustomInputField({super.key});

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 158, 156, 156),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Enter ticket reference number',
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
        ),
      ),
    );
  }
}

class Paragraph2 extends StatelessWidget {
  const Paragraph2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text:
                'Our Ticket Management system provides you with a seamless way to retrieve, manage, and interact with your purchased tickets. Gain access by entering your ',
            style: TextStyle(fontSize: 14), // Regular text style
          ),
          TextSpan(
            text: 'Ticket Reference Number',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 14), // Bold style
          ),
          TextSpan(
            text: ' or ',
            style: TextStyle(fontSize: 14), // Regular text style
          ),
          TextSpan(
            text: 'Phone Number',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 14), // Bold style
          ),
          TextSpan(
            text: ' to receive OTP.',
            style: TextStyle(fontSize: 14), // Regular text style
          ),
        ],
      ),
      textAlign: TextAlign.center, // Optional: Center-align the text
    );
  }
}
