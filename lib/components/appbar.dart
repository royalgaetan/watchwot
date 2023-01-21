import 'package:flutter/material.dart';
import 'package:watches_shop_app/screens/introductionpage.dart';
import 'package:watches_shop_app/screens/payment.dart';
import 'package:watches_shop_app/utils/styles.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key, required this.headerText, required this.subHeaderText, required this.actionIcon})
      : super(key: key);

  final String headerText;
  final String subHeaderText;
  final IconData actionIcon;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => {Navigator.pop(context)},
                  child: Container(
                    height: 60,
                    width: 60,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: const Color(0xFF232323).withOpacity(0.7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(Icons.arrow_back_ios_new_outlined),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      headerText,
                      style: kTextHeaderAppBar,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      subHeaderText,
                      style: kSubTextHeaderAppBar,
                    ),
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () => {
                if (actionIcon == Icons.shopping_cart_outlined)
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (builder) => const PaymentPage(),
                      ),
                    ),
                  },
                if (actionIcon == Icons.more_horiz_rounded)
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (builder) => const IntroductionPage(),
                      ),
                    ),
                  }
              },
              child: Container(
                height: 60,
                width: 60,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: const Color(0xFF232323).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Icon
                    Icon(actionIcon),

                    // Notification Circle

                    actionIcon == Icons.shopping_cart_outlined
                        ? Transform.translate(
                            offset: const Offset(14, -14),
                            child: Container(
                              margin: const EdgeInsets.only(right: 7),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.white, width: 2.2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const CircleAvatar(
                                radius: 8,
                                backgroundColor: Color(0xFFFCC873),
                                child: Text(
                                  "7",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
