import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final String? subtitle;
  final TextStyle titleStyle;
  final TextStyle? subtitleStyle;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final Color backgroundColor;
  final double borderRadius;
  final EdgeInsets padding;
  final Widget? leading; // Leading widget (icon, image, etc.)
  final Widget? trailing; // Trailing widget (icon, button, text, etc.)
  final BorderSide? borderSide;
  final Alignment alignment;

  CustomButton({
    super.key,
    required this.title,
    this.subtitle,
    required this.titleStyle,
    this.subtitleStyle,
    required this.onPressed,
    this.height = 81.0,
    this.width = 361.0,
    this.alignment = Alignment.centerLeft,
    this.backgroundColor = Colors.blue,
    this.borderRadius = 10.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0),
    this.leading,
    this.trailing,
    this.borderSide,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            elevation: 0,
            splashFactory: NoSplash.splashFactory,
            backgroundColor: backgroundColor,
            shadowColor: Colors.transparent,
            overlayColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              side: borderSide ?? BorderSide.none,
            ),
            padding: padding,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Leading widget + Title + Subtitle
              Row(
                children: [
                  if (leading != null) ...[
                    leading!,
                    const SizedBox(width: 12),
                  ],
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: titleStyle,
                      ),
                      if (subtitle != null) SizedBox(height: 10),
                      Text(
                        subtitle!,
                        style: subtitleStyle,
                      ),
                    ],
                  ),
                ],
              ),
              // Optional Trailing widget
              if (trailing != null) trailing!,
            ],
          ),
        ),
      ),
    );
  }
}
