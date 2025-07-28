import 'package:e_wallet/model/promocards.dart';
import 'package:flutter/material.dart';

class PromoList extends StatelessWidget {
  const PromoList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...promo_cards.map((e) {
            return (Image.asset(e));
          }),
        ],
      ),
    );
  }
}
