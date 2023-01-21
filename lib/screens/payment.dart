import 'package:flutter/material.dart';
import 'package:watches_shop_app/components/appbar.dart';
import 'package:watches_shop_app/screens/introductionpage.dart';
import 'package:watches_shop_app/utils/styles.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF030303),
      child: Column(
        children: [
          // App Bar
          const MyAppBar(
            headerText: "Payment",
            subHeaderText: "Convenient Payment",
            actionIcon: Icons.more_horiz_rounded,
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Card
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFF303030),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Card Top Info
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    text: 'Ower ',
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Color(0xFFFCC873),
                                      fontSize: 17,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w800,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Pay',
                                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    const CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Color(0xFF4B4B4B),
                                    ),
                                    Transform.translate(
                                      offset: const Offset(-8, 0),
                                      child: const CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Color(0xFFFCC873),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),

                            // Card Owner Name
                            const SizedBox(height: 20),
                            const Text(
                              'Liam Selar',
                              style: kSubTextHeaderAppBar,
                            ),

                            // Card Secure Number
                            const SizedBox(height: 20),
                            Row(
                              children: const [
                                Text(
                                  '****',
                                  style: kTextHeaderAppBar,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '****',
                                  style: kTextHeaderAppBar,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '****',
                                  style: kTextHeaderAppBar,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '3491',
                                  style: kTextHeaderAppBar,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),

                            // Card Bottom Info
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    text: 'Inventory ',
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.normal,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: ' \$103 440',
                                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                                RichText(
                                  text: const TextSpan(
                                    text: 'Cvv2 ',
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.normal,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: ' 789',
                                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Divider
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      width: double.infinity,
                      child: Divider(
                        color: Color(0xFF2F2F2F),
                        height: 1.4,
                        thickness: 1.7,
                      ),
                    ),

                    // Payment Method
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      children: [
                        RichText(
                          text: const TextSpan(
                            text: 'Payment ',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.grey,
                              fontSize: 18,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.normal,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Method',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PaymentMethod(
                          iconPath: "assets/images/paypal logo.png",
                          isSelected: false,
                        ),
                        PaymentMethod(
                          iconPath: "assets/images/airtel logo.png",
                          isSelected: true,
                        ),
                        PaymentMethod(
                          iconPath: "assets/images/add logo.png",
                          isSelected: false,
                        ),
                      ],
                    ),

                    // Divider
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      width: double.infinity,
                      child: Divider(
                        color: Color(0xFF2F2F2F),
                        height: 1.4,
                        thickness: 1.7,
                      ),
                    ),

                    // Payment Number
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Number',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.grey,
                            fontSize: 18,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          '1 item',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    // Payment Total Price
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Total Price',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.grey,
                            fontSize: 18,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          '\$50 300',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Buttom Confirmation
          GestureDetector(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (builder) => const IntroductionPage(),
                ),
              )
            },
            child: Container(
              height: 70,
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: BoxDecoration(
                color: const Color(0xFFFCC873),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Bottom button
                  const SizedBox(
                    height: 70,
                    width: 200,
                    child: Center(
                      child: Text(
                        'Confirmation',
                        style: kTextButton,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 30),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.black87,
                          size: 18,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.black54,
                          size: 18,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.black45,
                          size: 18,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.black38,
                          size: 18,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PaymentMethod extends StatelessWidget {
  PaymentMethod({Key? key, required this.iconPath, required this.isSelected}) : super(key: key);

  final String iconPath;
  final bool isSelected;

  Color colorBg = const Color(0xFF1E1E1E);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: isSelected ? colorBg : Colors.transparent,
            border: Border.all(color: colorBg, width: 0.6),
            borderRadius: BorderRadius.circular(20),
          ),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(iconPath),
            backgroundColor: isSelected ? colorBg : Colors.transparent,
          ),
        ),
        const SizedBox(
          height: 10,
        ),

        // Checked Circle
        !iconPath.contains('add logo')
            ? Container(
                margin: const EdgeInsets.only(right: 7),
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: isSelected ? colorBg : Colors.transparent,
                  border: Border.all(color: colorBg, width: 0.6),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: CircleAvatar(
                  backgroundColor: isSelected ? colorBg : Colors.transparent,
                  radius: 8,
                  child: isSelected
                      ? const Icon(
                          Icons.check,
                          size: 12,
                        )
                      : Container(),
                ),
              )
            : Container(),
      ],
    );
  }
}
