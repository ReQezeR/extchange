import 'package:flutter/material.dart';

class CurrencyButton extends StatefulWidget {
  const CurrencyButton({Key? key, required this.icon, required this.title, required this.onTap, this.height = 150, this.width = 150}) : super(key: key);
  final double height, width;
  final IconData icon;
  final String title;
  final Function onTap;

  @override
  State<CurrencyButton> createState() => _CurrencyButtonState();
}

class _CurrencyButtonState extends State<CurrencyButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedScale(
        scale: isPressed ? 0.85 : 1,
        duration: const Duration(milliseconds: 150),
        child: Container(
          height: widget.height,
          width: widget.width,
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          margin: const EdgeInsets.symmetric(vertical: 20),
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
              child: Stack(
                children: [
                  Center(
                    child: Icon(
                      widget.icon,
                      size: 90,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
