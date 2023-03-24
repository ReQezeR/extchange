import 'package:flutter/material.dart';

class CurrencyIcon extends StatelessWidget {
  const CurrencyIcon({
    Key? key,
    required this.currencyCode,
    required this.size,
    required this.color,
  }) : super(key: key);
  final String currencyCode;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      getIconData(),
      size: size,
      color: color,
    );
  }

  IconData getIconData() {
    switch (currencyCode) {
      case "USD":
        return Icons.attach_money;
      case "EUR":
        return Icons.euro;
      default:
        return Icons.attach_money;
    }
  }
}
