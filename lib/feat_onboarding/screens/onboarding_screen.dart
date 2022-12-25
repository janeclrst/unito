import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:unito/gen/assets.gen.dart';
import 'package:unito/feat_onboarding/view_models/contents_data.dart';
import 'package:unito/src/colors/extended_colors.dart';
import 'package:unito/feat_onboarding/button/button_with_icon.dart';

import 'package:unito/feat_onboarding/widgets/onboarding_content.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: contentsData.length,
                  controller: _pageController,
                  itemBuilder: ((context, index) => OnboardingContent(
                        imgPath: contentsData[index].imgPath,
                        title: contentsData[index].title,
                        description: contentsData[index].subTitle,
                      )),
                ),
              ),
              SmoothPageIndicator(
                controller: _pageController,
                count: contentsData.length,
                effect: const WormEffect(
                  activeDotColor: ExtendedColors.violet500,
                  dotColor: ExtendedColors.violet50,
                  dotHeight: 12.0,
                  dotWidth: 12.0,
                  spacing: 16.0,
                ),
              ),
              const SizedBox(height: 16.0),
              ButtonWithIcon(
                pageController: _pageController,
                icon: Assets.icons.arrows.arrowRight.path,
                title: "Let's get started",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
