import 'package:flutter/material.dart';

class ChangesIcon extends StatelessWidget {
  const ChangesIcon({Key? key, required this.currentValue, required this.previousValue, required this.size}) : super(key: key);
  final double currentValue, previousValue, size;

  @override
  Widget build(BuildContext context) {
    if (currentValue > previousValue) {
      return Container(
        width: size,
        height: size,
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.arrow_drop_up,
            size: size / 1.5,
            color: Colors.green,
          ),
        ),
      );
    } else if (currentValue == previousValue) {
      return Container(
        width: size,
        height: size,
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.circle,
            size: size / 4,
            color: Colors.blueGrey,
          ),
        ),
      );
    } else {
      return Container(
        width: size,
        height: size,
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.arrow_drop_down,
            size: size / 1.5,
            color: Colors.redAccent.shade200,
          ),
        ),
      );
    }
  }
}
