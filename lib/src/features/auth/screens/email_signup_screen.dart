import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unito/gen/assets.gen.dart';
import 'package:unito/src/colors/extended_colors.dart';
import 'package:unito/src/features/auth/buttons/long_primary_button.dart';
import 'package:unito/src/features/auth/screens/otp_screen.dart';
import 'package:unito/src/features/auth/screens/phonenum_signup_screen.dart';
import 'package:unito/src/features/auth/widgets/social_button_widget.dart';

class EmailSignUp extends StatefulWidget {
  const EmailSignUp({Key? key}) : super(key: key);

  @override
  State<EmailSignUp> createState() => _EmailSignUpState();
}

class _EmailSignUpState extends State<EmailSignUp> {
  late TextEditingController _textEditingController;
  bool _isChecked = false;
  bool _isButtonActive = false;
  String _textFormFieldValue = '';

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
          child: LayoutBuilder(builder:
              (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints:
                    BoxConstraints(minHeight: viewportConstraints.maxHeight),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //  : Skip, Header, Input, Checkbox, Social
                    Column(
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
                                child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  autofillHints: const [AutofillHints.email],
                                  validator: (email) => email != null &&
                                          EmailValidator.validate(email)
                                      ? null
                                      : 'Please enter a valid email',
                                  onChanged: ((value) {
                                    setState(() {
                                      _textFormFieldValue = value;
                                      final isButtonActive =
                                          _textEditingController
                                              .text.isNotEmpty;
                                      setState(() =>
                                          _isButtonActive = isButtonActive);
                                    });
                                  }),
                                  controller: _textEditingController,
                                  keyboardType: TextInputType.emailAddress,
                                  style: const TextStyle(
                                    color: ExtendedColors.violet500,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 12),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(
                                        color: ExtendedColors.violet500,
                                        width: 1.5,
                                      ),
                                    ),
                                    hintText: 'your.email@gmail.com',
                                    hintStyle: TextStyle(
                                      color: Colors.black.withOpacity(0.3),
                                      fontSize: 16,
                                    ),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: SvgPicture.asset(
                                        Assets.icons.communications.mail01.path,
                                        color: Colors.black.withOpacity(0.3),
                                      ),
                                    ),
                                    suffixIcon: _textEditingController
                                            .text.isEmpty
                                        ? Container(width: 0)
                                        : IconButton(
                                            onPressed: () =>
                                                _textEditingController.clear(),
                                            icon: SvgPicture.asset(
                                              Assets.icons.general.x01.path,
                                              color: ExtendedColors.red600,
                                              height: 24,
                                            ),
                                          ),
                                    filled: true,
                                    fillColor: ExtendedColors.violet50,
                                  ),
                                  autocorrect: true,
                                  cursorColor: ExtendedColors.violet800,
                                ),
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
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1),
                        Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  buildDivider(),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                    ),
                                    child: Text(
                                      'Or sign up with',
                                      style: GoogleFonts.nunito(
                                        color: Colors.white30,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  buildDivider(),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SocialButton(
                                  iconPath: Assets
                                      .illustrations.thirdParty.google.path,
                                ),
                                const SizedBox(width: 16.0),
                                SocialButton(
                                  iconPath: Assets
                                      .illustrations.thirdParty.facebook.path,
                                ),
                                const SizedBox(width: 16.0),
                                SocialButton(
                                  iconPath: Assets
                                      .illustrations.thirdParty.twitter.path,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Column(
                      children: [
                        LongPrimaryButton(
                          text: 'Sign up',
                          navTo: OTP(),
                          checkBoxValue: _isChecked,
                          isButtonActive: _isButtonActive,
                          warningMessage:
                              'Please check the box and provide valid email address',
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
                                text: 'number',
                                style: GoogleFonts.nunito(
                                  color: ExtendedColors.violet400,
                                  fontSize: 14,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const PhoneNumSignUp(),
                                      ),
                                    );
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  Expanded buildDivider() {
    return const Expanded(
      child: Divider(
        color: Colors.white30,
        height: 1.5,
        thickness: 1,
      ),
    );
  }
}
