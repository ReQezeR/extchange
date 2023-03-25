import 'package:extchange/src/widgets/custom_button.dart';
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
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: CustomButton(
          height: widget.height,
          width: widget.width,
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          onTap: widget.onTap,
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
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
