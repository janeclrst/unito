import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unito/gen/assets.gen.dart';
import 'package:unito/ui/input/phone_number.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    _textEditingController = TextEditingController(text: '+62 ');
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Skip',
                    style: GoogleFonts.nunito(
                      color: Colors.white30,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Create your account',
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        )),
                    Text(
                      'You are one step closer',
                      style: GoogleFonts.nunito(
                        color: Colors.white30,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter phone number',
                      style: GoogleFonts.nunito(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    PhoneNumber(
                      controller: _textEditingController,
                      hint: "+62 812 8787 9999",
                      icon: Assets.icons.communications.phone.path,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
