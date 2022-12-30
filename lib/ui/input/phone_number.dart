import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unito/src/colors/extended_colors.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({
    Key? key,
    required this.icon,
    required this.hint,
    this.controller,
  }) : super(key: key);
  final String icon;
  final String hint;
  final TextEditingController? controller;

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // TODO: add an error handling if user input a text except number
      validator: (value) {
        if (value!.contains(RegExp(r'^[a-zA-Z]'))) {
          return ScaffoldMessenger.of(context)
              .showSnackBar(
                const SnackBar(
                  content: Text('Please input a valid number'),
                  duration: Duration(milliseconds: 300),
                ),
              )
              .toString();
        }
        return null;
      },
      onChanged: (value) {
        const int phoneNumLength = 15;
        if (value.length == phoneNumLength) FocusScope.of(context).nextFocus();
      },
      controller: widget.controller,
      keyboardType: TextInputType.phone,
      style: const TextStyle(
        color: ExtendedColors.violet500,
      ),
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: ExtendedColors.violet500,
            width: 1.5,
          ),
        ),
        hintText: widget.hint,
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.3),
          fontSize: 16,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            widget.icon,
            color: Colors.black.withOpacity(0.3),
          ),
        ),
        filled: true,
        fillColor: ExtendedColors.violet50,
      ),
      autocorrect: true,
      cursorColor: ExtendedColors.violet800,
    );
  }
}
