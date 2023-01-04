import 'package:flutter/material.dart';

import 'package:unito/gen/assets.gen.dart';
import 'package:unito/src/constants/welcome_title.dart';
import 'package:unito/src/features/auth/buttons/primary_button.dart';
import 'package:unito/src/features/auth/buttons/secondary_button.dart';
import 'package:unito/src/features/auth/widgets/welcome_widget.dart';

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
                  Expanded(
                    child: SecondaryButton(
                      text: "Login",
                      navTo: 'PhonenumLogin',
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: PrimaryButton(
                      text: "Sign up",
                      navTo: 'PhonenumSignup',
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
