import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unito/feat_welcome/screens/welcome_screen.dart';
import 'package:unito/src/colors/extended_colors.dart';

class ButtonWithIcon extends StatelessWidget {
  const ButtonWithIcon({
    Key? key,
    required PageController pageController,
    required this.icon,
    required this.title,
  })  : _pageController = pageController,
        super(key: key);

  final PageController _pageController;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      label: Text(
        title,
        style: GoogleFonts.nunito(
            color: Colors.white, fontWeight: FontWeight.bold),
      ),
      onPressed: () {
        bool isLastPage = _pageController.position.pixels ==
            _pageController.position.maxScrollExtent;
        isLastPage ? toWelcome(context) : nextPage();
      },
      icon: SvgPicture.asset(
        icon,
        color: Colors.white,
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          ExtendedColors.violet800,
        ),
        alignment: Alignment.center,
        minimumSize: MaterialStateProperty.all<Size>(
          const Size(56, 48.0),
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 64, vertical: 12),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }

  void toWelcome(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Welcome()));
  }

  void nextPage() {
    _pageController.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }
}
