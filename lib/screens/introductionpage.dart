import 'dart:math';

import 'package:flutter/material.dart';
import 'package:watches_shop_app/screens/homepage.dart';
import 'package:watches_shop_app/utils/styles.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: SafeArea(
        child: Stack(
          children: [
            // Introduction Page Background
            Container(
              width: double.infinity,
              color: Colors.grey.shade900,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Blur bg
                  Transform.rotate(
                    angle: pi / 2,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          colors: [
                            Colors.grey.shade900,
                            Colors.grey.shade700,
                            Colors.grey.shade400,
                            Colors.grey.shade700,
                            Colors.grey.shade900,
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Image bg
                  PageView(
                    children: [
                      Transform.translate(
                        offset: const Offset(20, 13),
                        child: Transform.scale(
                          scale: 1.5,
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/watch 1.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(20, 13),
                        child: Transform.scale(
                          scale: 1.5,
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/watch 2.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Transform.translate(
                          offset: const Offset(100, 13),
                          child: Transform.scale(
                            scale: 1.6,
                            child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/watch 3.png'),
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),

            // Introduction Page Content
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Top bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Watches Info
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Jaquet Droz",
                              style: kTextHeader,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("Do not waste your time", style: kSubText),
                            const SizedBox(
                              height: 14,
                            ),
                            SizedBox(
                              width: 100,
                              child: Divider(
                                height: 0.1,
                                color: Colors.grey.shade100,
                                thickness: 0.1,
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),

                            // Carousel Bubble
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.grey.shade700.withOpacity(0.4),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                const CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white,
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.grey.shade700.withOpacity(0.4),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),

                    // Skip button
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builder) => const HomePage(),
                          ),
                        )
                      },
                      child: Transform.translate(
                        offset: const Offset(20, -10),
                        child: Transform.scale(
                          scale: 1.9,
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.1),
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(65),
                                topLeft: Radius.circular(45),
                                bottomRight: Radius.circular(45),
                              ),
                            ),
                            child: Transform.translate(
                              offset: const Offset(-10, 5),
                              child: const Center(
                                child: Text(
                                  'Skip',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 8,
                                      fontFamily: "Roboto"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                // Bottom Bar
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
                      // Bottom button
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builder) => const HomePage(),
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
                              'Get Started',
                              style: kTextButton,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 30),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.grey.shade200,
                              size: 18,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.grey.shade400,
                              size: 18,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.grey.shade600,
                              size: 18,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.grey.shade700,
                              size: 18,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
