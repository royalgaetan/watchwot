import 'dart:math';

import 'package:flutter/material.dart';
import 'package:watches_shop_app/components/appbar.dart';
import 'package:watches_shop_app/screens/payment.dart';
import 'package:watches_shop_app/utils/styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF030303),
      child: Column(
        children: [
          // App Bar
          const MyAppBar(
              headerText: "Store Online", subHeaderText: 'Easy shopping', actionIcon: Icons.shopping_cart_outlined),

          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [
                // Watch Image
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Border 2 bg
                      Container(
                        width: 340,
                        height: 340,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFF2F2F2F).withOpacity(0.7), width: 1.2),
                          borderRadius: BorderRadius.circular(350),
                          color: Colors.transparent,
                        ),
                      ),

                      // Border 1 bg
                      Container(
                        width: 290,
                        height: 290,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFF2F2F2F).withOpacity(0.5), width: 1.2),
                          borderRadius: BorderRadius.circular(350),
                          color: Colors.transparent,
                        ),
                      ),

                      // Ring bg
                      Container(
                        width: 250,
                        height: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(350),
                            gradient: RadialGradient(colors: [
                              const Color(0xFF2F2F2F).withOpacity(0.6),
                              const Color(0xFF2F2F2F),
                            ])),
                      ),

                      // Image Bg
                      Container(
                        width: double.infinity,
                        height: 320,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/watch 4.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Watch Info
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      // Watch Info Top
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Text(
                                'Jaquet Droz',
                                style: kTextHeaderAppBar,
                              ),
                              SizedBox(width: 10),
                              Text(
                                '(Made in Congo)',
                                style: kSubTextHeaderAppBar,
                              ),
                            ],
                          ),
                          const Text(
                            '7.8/10',
                            style: kTextHeaderAppBar,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      // Divider
                      const SizedBox(
                        width: double.infinity,
                        child: Divider(
                          color: Color(0xFF2F2F2F),
                          height: 1.4,
                          thickness: 1.7,
                        ),
                      ),

                      // Watch Info: Colors & Size
                      FittedBox(
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Colors Section
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Color',
                                    style: kSubTextHeaderAppBar,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),

                                  // Colors Palette
                                  Row(
                                    children: const [
                                      ColorBullet(
                                        color: Color(0xFF242424),
                                        isSelected: false,
                                      ),
                                      ColorBullet(
                                        color: Color(0xFFA58B74),
                                        isSelected: true,
                                      ),
                                      ColorBullet(
                                        color: Color(0xFFDEA331),
                                        isSelected: false,
                                      ),
                                      ColorBullet(
                                        color: Color(0xFFEFEFEF),
                                        isSelected: false,
                                      ),
                                    ],
                                  )
                                ],
                              ),

                              // Vertical Divider
                              Transform.rotate(
                                angle: pi / 2,
                                child: const SizedBox(
                                  width: 100,
                                  child: Divider(
                                    color: Color(0xFF2F2F2F),
                                    height: 1.4,
                                    thickness: 1.7,
                                  ),
                                ),
                              ),

                              // Size Section
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Sizing',
                                    style: kSubTextHeaderAppBar,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),

                                  // Sizes Palette
                                  Row(
                                    children: const [
                                      WatchSizingText(text: '10.5', isSelected: false),
                                      WatchSizingText(text: '13.2', isSelected: false),
                                      WatchSizingText(text: '14.4', isSelected: true),
                                      WatchSizingText(text: '16.3', isSelected: false),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),

          // Bottom button
          Container(
            height: 70,
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Text(
                        '\$ 50 300',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.grey.shade400,
                          fontSize: 17,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (builder) => const PaymentPage(),
                      ),
                    )
                  },
                  child: Container(
                    height: 70,
                    width: 200,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFCC873),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: Text(
                        'Buy Online',
                        style: kTextButton,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ColorBullet extends StatelessWidget {
  const ColorBullet({Key? key, required this.color, required this.isSelected}) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 7),
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: isSelected ? Border.all(color: color, width: 1.2) : Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.circular(20),
      ),
      child: CircleAvatar(
        radius: 9,
        backgroundColor: color,
      ),
    );
  }
}

class WatchSizingText extends StatelessWidget {
  const WatchSizingText({Key? key, required this.text, required this.isSelected}) : super(key: key);

  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 7),
      child: Text(
        text,
        style: TextStyle(
          decoration: TextDecoration.none,
          color: isSelected ? Colors.white : Colors.grey.shade400,
          fontSize: 15,
          fontFamily: "Roboto",
          fontWeight: isSelected ? FontWeight.w900 : FontWeight.normal,
        ),
      ),
    );
  }
}
