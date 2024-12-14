import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContactUsSection extends StatefulWidget {
  const ContactUsSection({super.key});

  @override
  State<ContactUsSection> createState() => _ContactUsSectionState();
}

class _ContactUsSectionState extends State<ContactUsSection> {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String ferror = '';
  String lerror = '';
  String perror = '';

  void validateForm() {
    setState(() {
      if (firstnameController.text.isEmpty) {
        ferror = "First Name Can not be empty *";
      } else {
        ferror = '';
      }
      if (lastnameController.text.isEmpty) {
        lerror = "Last Name Can not be empty *";
      } else {
        lerror = '';
      }
      if (phoneController.text.isEmpty) {
        perror = "Phone Can not be empty *";
      } else {
        perror = '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isSmallScreen = MediaQuery.of(context).size.width < 1200;
    return SizedBox(
      height: 550,
      child: Row(
        children: [
          const SizedBox(
            width: 150,
          ),
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 205,
                    width: 350,
                    child: Image.asset(
                      'assets/Logo334x.png',
                      height: 205,
                      width: 350,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 80,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFFCECBC)),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 25,
                            width: 25,
                            child:
                                Image.asset('assets/logos_whatsapp-icon.png'),
                          ),
                          const Spacer(),
                          SizedBox(
                            height: 25,
                            width: 25,
                            child: Image.asset('assets/majesticons_phone.png'),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 32,
                    width: 170,
                    child: Text(
                      '+237 650 11 85 88',
                      style: TextStyle(
                        fontFamily: "RobotoMedium",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )),
          const SizedBox(
            width: 200,
          ),
          Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  isSmallScreen
                      ? const SizedBox(
                          height: 75,
                        )
                      : const SizedBox(
                          height: 175,
                        ),
                  isSmallScreen
                      ? Column(
                          children: [
                            CustomInfo(
                              width: 620,
                              controller: firstnameController,
                              error: ferror,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomInfo(
                              width: 620,
                              controller: lastnameController,
                              error: lerror,
                              labelText: "Last Name",
                            )
                          ],
                        )
                      : Row(
                          children: [
                            CustomInfo(
                              controller: firstnameController,
                              error: ferror,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            CustomInfo(
                              controller: lastnameController,
                              error: lerror,
                              labelText: "Last Name",
                            )
                          ],
                        ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInfo(
                    width: 620,
                    labelText: "Phone Number",
                    controller: phoneController,
                    error: perror,
                    isNum: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: InkWell(
                      onTap: () {
                        validateForm();
                      },
                      child: Container(
                        height: 70,
                        width: 620,
                        decoration: BoxDecoration(
                          color: Colors.blue, // White background
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
              )),
          isSmallScreen
              ? const SizedBox(
                  width: 20,
                )
              : const SizedBox()
        ],
      ),
    );
  }
}

class CustomInfo extends StatefulWidget {
  String labelText;
  double height;
  double width;
  bool isNum;
  String error;
  TextEditingController? controller = TextEditingController();

  CustomInfo({
    this.labelText = 'First name',
    this.height = 70,
    this.width = 300,
    this.isNum = false,
    this.controller,
    this.error = '',
  });

  @override
  State<CustomInfo> createState() => _CustomInfoState();
}

class _CustomInfoState extends State<CustomInfo> {
  // Controller to manage the TextFormField's input
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // Variable to hold error message

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.labelText,
            style: const TextStyle(
              fontFamily: "Roboto",
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
              color: Colors.white, // White background
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1, color: Colors.black),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: TextFormField(
                controller: widget.controller,
                keyboardType: widget.isNum
                    ? TextInputType.number
                    : TextInputType.text, // Restrict to text or number input
                inputFormatters: [
                  widget.isNum
                      ? FilteringTextInputFormatter.digitsOnly
                      : FilteringTextInputFormatter.allow(RegExp('[a-zA-Z ]')),
                ],
                decoration: InputDecoration(
                  hintText: 'Enter here', // Placeholder text
                  border: InputBorder.none, // No border around the text field
                  errorText:
                      widget.error, // Display error message if validation fails
                ),
                style: const TextStyle(
                  fontFamily: 'RobotoLight',
                  fontSize: 20,
                ),
                onChanged: (value) {
                  if (_formKey.currentState?.validate() ?? false) {}
                },
                validator: (value) {
                  if (widget.isNum) {
                    if (value == null || value.isEmpty) {
                      return 'Enter a valid Number *';
                    }
                  } else {
                    if (value == null || value.isEmpty) {
                      return 'Only letters and spaces are allowed *';
                    }
                  }
                  return null; // No error
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
