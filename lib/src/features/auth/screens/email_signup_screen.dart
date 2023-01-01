import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unito/gen/assets.gen.dart';
import 'package:unito/src/colors/extended_colors.dart';
import 'package:unito/src/features/auth/widgets/email_input.dart';

class EmailSignUp extends StatefulWidget {
  const EmailSignUp({Key? key}) : super(key: key);

  @override
  State<EmailSignUp> createState() => _EmailSignUpState();
}

class _EmailSignUpState extends State<EmailSignUp> {
  late TextEditingController _textEditingController;
  bool _isChecked = false;

  @override
  void initState() {
    _textEditingController = TextEditingController(text: '');
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void onListen() => setState(() {});

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
                  onTap: (() {}),
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
                      'Enter your email',
                      style: GoogleFonts.nunito(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Form(
                      autovalidateMode: AutovalidateMode.always,
                      child: EmailInput(
                          textEditingController: _textEditingController),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Container(
                alignment: Alignment.topLeft,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Transform.scale(
                      scale: 1.3,
                      child: SizedBox(
                        height: 24,
                        width: 24,
                        child: Checkbox(
                          value: _isChecked,
                          onChanged: (bool? value) {
                            setState(() => _isChecked = value!);
                          },
                          checkColor: ExtendedColors.violet900,
                          fillColor: MaterialStateProperty.all<Color>(
                            ExtendedColors.violet50,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'By signing up you are agreeing to the ',
                              style: GoogleFonts.nunito(
                                color: Colors.white60,
                                fontSize: 12,
                              ),
                            ),
                            TextSpan(
                              text: 'Terms of Service ',
                              style: GoogleFonts.nunito(
                                color: ExtendedColors.violet400,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                            TextSpan(
                              text: 'and that you have read our ',
                              style: GoogleFonts.nunito(
                                color: Colors.white60,
                                fontSize: 12,
                              ),
                            ),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: GoogleFonts.nunito(
                                color: ExtendedColors.violet400,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          //! TODO: Add 3rd party sign up vendor
          //! TODO: Add sign up button
        ),
      ),
    );
  }
}
