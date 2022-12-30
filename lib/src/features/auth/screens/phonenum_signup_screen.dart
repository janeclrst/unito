import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unito/gen/assets.gen.dart';
import 'package:unito/src/colors/extended_colors.dart';
import 'package:unito/src/features/auth/buttons/long_primary_button.dart';
import 'package:unito/src/features/auth/screens/email_signup_screen.dart';
import 'package:unito/src/features/auth/screens/otp_screen.dart';
import 'package:unito/ui/input/phone_number.dart';

class PhoneNumSignUp extends StatefulWidget {
  PhoneNumSignUp({Key? key}) : super(key: key);

  @override
  State<PhoneNumSignUp> createState() => _PhoneNumSignUpState();
}

class _PhoneNumSignUpState extends State<PhoneNumSignUp> {
  late TextEditingController _textEditingController;
  bool _isChecked = false;

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
                                  text:
                                      'By signing up you are agreeing to the ',
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
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
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
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
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
              Column(
                children: [
                  LongPrimaryButton(
                    text: 'Sign up',
                    navTo: OTP(),
                    checkBoxValue: _isChecked,
                  ),
                  const SizedBox(height: 24),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Or sign up with your ',
                          style: GoogleFonts.nunito(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text: 'email',
                          style: GoogleFonts.nunito(
                            color: ExtendedColors.violet400,
                            fontSize: 14,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EmailSignUp(),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                  // const SizedBox(height: 24),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
