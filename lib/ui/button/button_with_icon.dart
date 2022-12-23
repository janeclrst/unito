import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
        _pageController.nextPage(
            duration: const Duration(milliseconds: 300), curve: Curves.ease);
      },
      icon: SvgPicture.asset(
        icon,
        color: Colors.white,
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color(0xFF5B21B6),
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
}
