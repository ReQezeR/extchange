import 'package:flutter/material.dart';

class RemoveOverscrollIndicator extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class RemoveOverscrollWidget extends StatelessWidget {
  const RemoveOverscrollWidget({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: RemoveOverscrollIndicator(),
      child: GlowingOverscrollIndicator(
        axisDirection: AxisDirection.down,
        color: Colors.transparent,
        showLeading: false,
        showTrailing: false,
        child: child,
      ),
    );
  }
}
