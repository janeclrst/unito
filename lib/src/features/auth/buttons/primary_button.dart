import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unito/src/colors/extended_colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.navTo,
  }) : super(key: key);
  final String text;
  final String navTo;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.toNamed(navTo);
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        ),
        backgroundColor:
            MaterialStateProperty.all<Color>(ExtendedColors.violet800),
      ),
      child: Text(
        text,
        style: GoogleFonts.nunito(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
