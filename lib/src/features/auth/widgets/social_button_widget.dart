import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unito/src/colors/extended_colors.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({Key? key, required this.iconPath}) : super(key: key);
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        color: ExtendedColors.violet50,
      ),
      child: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          iconPath,
        ),
      ),
    );
  }
}
