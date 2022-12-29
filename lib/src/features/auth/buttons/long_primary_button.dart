import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unito/src/colors/extended_colors.dart';

class LongPrimaryButton extends StatelessWidget {
  const LongPrimaryButton({
    Key? key,
    required this.text,
    required this.navTo,
  }) : super(key: key);
  final String text;
  final Widget navTo;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => navTo));
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        // padding: MaterialStateProperty.all<EdgeInsets>(
        //   const EdgeInsets.symmetric(
        //     vertical: 12,
        //     horizontal: 128,
        //   ),
        // ),
        backgroundColor: MaterialStateProperty.all<Color>(
          ExtendedColors.violet800,
        ),
        minimumSize: MaterialStateProperty.all<Size>(
          Size(MediaQuery.of(context).size.width, 48.0),
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.nunito(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
