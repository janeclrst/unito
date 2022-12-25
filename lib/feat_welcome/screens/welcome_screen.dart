import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unito/feat_welcome/constants/welcome_title.dart';
import 'package:unito/feat_welcome/widgets/primary_button.dart';
import 'package:unito/feat_welcome/widgets/secondary_button.dart';
import 'package:unito/feat_welcome/widgets/welcome_widget.dart';
import 'package:unito/gen/assets.gen.dart';
import 'package:unito/src/colors/extended_colors.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WelcomeContent(
                  imgPath: Assets.illustrations.welcome.rocket.path,
                  title: WelcomeTitle.title1,
                  subTitle: WelcomeTitle.subTitle1),
              Row(
                children: [
                  const Expanded(
                    child: SecondaryButton(
                      text: "Login",
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: PrimaryButton(
                      text: "Sign up",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
