import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unito/gen/assets.gen.dart';
import 'package:unito/src/colors/extended_colors.dart';

class EmailInput extends StatefulWidget {
  const EmailInput(
      {Key? key, required TextEditingController textEditingController})
      : _textEditingController = textEditingController,
        super(key: key);

  final TextEditingController _textEditingController;

  @override
  State<EmailInput> createState() => _EmailInputState();
}

class _EmailInputState extends State<EmailInput> {
  @override
  void initState() {
    widget._textEditingController.addListener(onListen);
    super.initState();
  }

  @override
  void dispose() {
    widget._textEditingController.removeListener(onListen);
    super.dispose();
  }

  void onListen() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.always,
      autofillHints: const [AutofillHints.email],
      validator: (email) => email != null && EmailValidator.validate(email)
          ? null
          : 'Please enter a valid email',
      controller: widget._textEditingController,
      keyboardType: TextInputType.emailAddress,
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
        hintText: 'your.email@gmail.com',
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.3),
          fontSize: 16,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            Assets.icons.communications.mail01.path,
            color: Colors.black.withOpacity(0.3),
          ),
        ),
        suffixIcon: widget._textEditingController.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                onPressed: () => widget._textEditingController.clear(),
                icon: SvgPicture.asset(
                  Assets.icons.general.x01.path,
                  color: ExtendedColors.red600,
                  height: 24,
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
