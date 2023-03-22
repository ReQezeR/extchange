import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class InvestingAnimation extends StatefulWidget {
  const InvestingAnimation({Key? key, required this.accentColor}) : super(key: key);
  final dynamic accentColor;

  @override
  State<InvestingAnimation> createState() => _InvestingAnimationState();
}

class _InvestingAnimationState extends State<InvestingAnimation> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Duration animationDuration;
  bool isComplete = true;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      autofocus: false,
      onTap: isComplete
          ? () {
              setState(() {
                isComplete = false;
              });
              _controller.forward(from: 0).whenComplete(() => setState(() {
                    isComplete = true;
                  }));
            }
          : null,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/animations/InvestingAnimation.json',
            fit: BoxFit.fill,
            delegates: LottieDelegates(
              values: [
                ValueDelegate.color(
                  const ['**', 'bar1', '**'],
                  value: widget.accentColor,
                ),
                ValueDelegate.color(
                  const ['**', 'bar2', '**'],
                  value: widget.accentColor,
                ),
                ValueDelegate.color(
                  const ['**', 'bar3', '**'],
                  value: widget.accentColor,
                ),
                ValueDelegate.color(
                  const ['**', 'bar4', '**'],
                  value: widget.accentColor,
                ),
                ValueDelegate.color(
                  const ['**', 'bar5', '**'],
                  value: widget.accentColor,
                ),
              ],
            ),
            controller: _controller,
            onLoaded: (composition) {
              _controller
                ..duration = composition.duration
                ..reverseDuration = composition.duration
                ..forward().whenComplete(() => setState(() {
                      isComplete = true;
                    }));
            },
          ),
        ],
      ),
    );
  }
}
