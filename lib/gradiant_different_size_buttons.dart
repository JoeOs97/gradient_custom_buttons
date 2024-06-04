library circle_button;

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final LinearGradient linearGradient;
  final Color textColor;
  final double width;
  final double height;
  final double iconSize;
  final Widget buttonChild;
  final Color? solidButtonColor;
  final BorderRadius? borderRadius;
  final Color? iconColor;

  const CircleButton({
    Key? key,
    required this.onPressed,
    this.iconColor = Colors.white,
    this.text = '',
    required this.buttonChild,
    required this.borderRadius,
    this.solidButtonColor = Colors.transparent,
    this.iconSize = 20,
    this.height = 50,
    this.width = 50,
    required this.linearGradient,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: linearGradient,
        borderRadius: borderRadius,
      ),
      child: IconButton(
        onPressed: onPressed,
        iconSize: iconSize,
        splashRadius: 20,
        icon: buttonChild,
      ),
    );
  }
}
