import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'investing_animation.dart';
import 'custom_currency_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  final Color mainAccentColor = Colors.lime;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color mainAccentColor = Colors.green;
  var horizontalMargin = const EdgeInsets.symmetric(horizontal: 15);

  @override
  void initState() {
    print("nav");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mainAccentColor = widget.mainAccentColor;
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                margin: horizontalMargin,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color: mainAccentColor,
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.currency_exchange,
                            color: Colors.grey.shade900,
                          ),
                          const Text(
                            "Extchange",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    //TODO open settings page
                    // Container(
                    //   decoration: BoxDecoration(
                    //     color: mainAccentColor,
                    //     borderRadius: const BorderRadius.all(Radius.circular(5)),
                    //   ),
                    //   padding: const EdgeInsets.all(10),
                    //   child: Icon(
                    //     Icons.settings,
                    //     color: Colors.grey.shade900,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                margin: horizontalMargin,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.45,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      clipBehavior: Clip.antiAlias,
                      child: Material(
                        color: Colors.transparent,
                        child: Stack(
                          children: [
                            Center(
                              child: InvestingAnimation(accentColor: mainAccentColor),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 60,
                                color: Colors.black.withAlpha(100),
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: const [
                                    Text("Select currency", style: TextStyle(color: Colors.white, fontSize: 18)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CurrencyButton(
                            title: "EUR",
                            icon: Icons.euro_rounded,
                            onTap: () => context.go('/details/eur'),
                          ),
                          const VerticalDivider(),
                          CurrencyButton(
                            title: "USD",
                            icon: Icons.attach_money,
                            onTap: () => context.go('/details/usd'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
