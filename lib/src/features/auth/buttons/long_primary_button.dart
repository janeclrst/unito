import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unito/src/colors/extended_colors.dart';

class LongPrimaryButton extends StatefulWidget {
  const LongPrimaryButton({
    Key? key,
    required this.text,
    required this.navTo,
    required this.checkBoxValue,
    required this.isButtonActive,
    required this.warningMessage,
  }) : super(key: key);
  final String text;
  // final Widget navTo;
  final String navTo;
  final bool checkBoxValue;
  final bool isButtonActive;
  final String warningMessage;

  @override
  State<LongPrimaryButton> createState() => _LongPrimaryButtonState();
}

class _LongPrimaryButtonState extends State<LongPrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (widget.checkBoxValue == true && widget.isButtonActive == true) {
          Get.toNamed(widget.navTo);
        } else if (widget.checkBoxValue != true &&
            widget.isButtonActive != true) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                widget.warningMessage,
                style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              backgroundColor: ExtendedColors.red600,
            ),
          );
        } else if (widget.checkBoxValue != true) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Please check the box',
                style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              backgroundColor: ExtendedColors.red600,
            ),
          );
        } else if (widget.isButtonActive != true) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Please input a value',
                style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              backgroundColor: ExtendedColors.red600,
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Something error occured :(',
                style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              backgroundColor: ExtendedColors.red600,
            ),
          );
        }
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          return widget.checkBoxValue && widget.isButtonActive
              ? ExtendedColors.violet800
              : Colors.grey;
        }),
        minimumSize: MaterialStateProperty.all<Size>(
          Size(MediaQuery.of(context).size.width, 48.0),
        ),
      ),
      child: Text(
        widget.text,
        style: GoogleFonts.nunito(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
