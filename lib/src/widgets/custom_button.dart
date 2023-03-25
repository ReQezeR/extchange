import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    Key? key,
    required this.child,
    required this.onTap,
    required this.decoration,
    this.width,
    this.height,
    this.pressedScale,
  }) : super(key: key);
  final Widget child;
  final Function onTap;
  final Decoration decoration;
  final double? height, width, pressedScale;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
        scale: isPressed ? widget.pressedScale ?? 0.85 : 1,
        duration: const Duration(milliseconds: 150),
        child: Container(
          width: widget.width,
          height: widget.height,
          decoration: widget.decoration,
          clipBehavior: Clip.antiAlias,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTapDown: (details) {
                setState(() {
                  isPressed = true;
                });
              },
              onTapUp: (details) {
                setState(() {
                  isPressed = false;
                });
                widget.onTap();
              },
              onTapCancel: () {
                setState(() {
                  isPressed = false;
                });
              },
              child: widget.child,
            ),
          ),
        ));
  }
}
