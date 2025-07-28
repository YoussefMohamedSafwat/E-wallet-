import 'package:e_wallet/widget/option_item.dart';
import 'package:flutter/material.dart';

class OptionBox extends StatelessWidget {
  const OptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF4CD080),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          OptionItem(icon: Icons.swap_horiz, label: "Transfer"),
          OptionItem(icon: Icons.credit_card, label: "Top up"),
          OptionItem(icon: Icons.history, label: "History"),
        ],
      ),
    );
  }
}
