import 'package:e_wallet/widget/logo_widget.dart';
import 'package:e_wallet/widget/option_box.dart';
import 'package:e_wallet/widget/payment_list.dart';
import 'package:e_wallet/widget/promo_list.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const LogoWidget(),
                IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
              ],
            ),

            const SizedBox(height: 30),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Hello Andree",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      "Your available balance",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Text(
                  '\$15,901',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const OptionBox(),
            const SizedBox(height: 30),
            const Text(
              "Payment list",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            const PaymentList(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Promo & discount",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "See More",
                    style: TextStyle(
                      color: Color(0xFF4CD080),
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
            const PromoList(),
          ],
        ),
      ),
    );
  }
}
