library developer_deck_package;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Buttons {
  google,
  facebook,
  microsoft,
  linkedIn,
  twitter,
  gitHub,
  apple,
  email,
}

class SignInButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Buttons? button;
  final String? text;
  final ShapeBorder? shape;

  const SignInButton(this.button,
      {super.key, @required this.onPressed, this.text, this.shape})
      : assert(button != null),
        assert(onPressed != null);

  @override
  Widget build(BuildContext context) {
    return Btn(
      key: const ValueKey("Apple"),
      text: text ?? "Sign In With Apple",
      icon: FontAwesomeIcons.apple,
      onPressed: onPressed,
      backgroundColor: Colors.white,
      textColor: Colors.black,

      iconColor: Colors.black,
      shape: shape,
    );
  }
}

class Btn extends StatelessWidget {
  final Color? textColor, backgroundColor, iconColor;
  final VoidCallback? onPressed;
  final String? text;
  final IconData? icon;
  final Widget? image;
  final ShapeBorder? shape;

  const Btn(
      {super.key,
      this.backgroundColor,
      this.onPressed,
      this.text,
      this.icon,
      this.textColor,
      this.iconColor,
      this.image,
      this.shape});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          key: key,
          onPressed: onPressed,
          color: backgroundColor,
          shape: shape ?? ButtonTheme.of(context).shape,
          padding: const EdgeInsets.all(0),
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 220,
            ),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 13,
                    ),
                    child: image ??
                        Icon(
                          icon,
                          size: 20,
                          color: iconColor,
                        ),
                  ),
                  Text(
                    text ?? "asd",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: textColor,
                      fontSize: 14,
                      backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
