import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unito/src/colors/extended_colors.dart';

class LongPrimaryButton extends StatefulWidget {
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
  State<LongPrimaryButton> createState() => _LongPrimaryButtonState();
}

class _LongPrimaryButtonState extends State<LongPrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.checkBoxValue
          ? () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => widget.navTo,
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
          return widget.checkBoxValue ? ExtendedColors.violet800 : Colors.grey;
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
