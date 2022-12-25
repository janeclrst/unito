import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({
    Key? key,
    required this.imgPath,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String imgPath;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          imgPath,
          height: 300,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.nunito(
            fontSize: 32,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: GoogleFonts.nunito(
            fontSize: 14,
            color: Colors.white.withOpacity(0.8),
          ),
        )
      ],
    );
  }
}
