import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unito/src/colors/extended_colors.dart';

class LongPrimaryButton extends StatelessWidget {
  const LongPrimaryButton({
    Key? key,
    required this.text,
    required this.navTo,
    required this.checkBoxValue,
  }) : super(key: key);
  final String text;
  final Widget navTo;
  final bool checkBoxValue;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: checkBoxValue
          ? () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => navTo,
                ),
              );
            }
          : null,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          return checkBoxValue ? ExtendedColors.violet800 : Colors.grey;
        }),
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