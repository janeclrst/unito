import 'package:flutter/material.dart';
import 'package:unito/feat_welcome/constants/welcome_title.dart';
import 'package:unito/feat_welcome/widgets/welcome_widget.dart';
import 'package:unito/gen/assets.gen.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: WelcomeContent(
              imgPath: Assets.illustrations.welcome.rocket.path,
              title: WelcomeTitle.title1,
              subTitle: WelcomeTitle.subTitle1),
        ),
      ),
    );
  }
}
