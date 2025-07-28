import 'package:flutter/material.dart';

class Payment {
  final IconData icon;
  final String label;
  final Color iconColor;

  Payment(this.icon, this.label, this.iconColor);
}

final List<Payment> paymentlist = [
  Payment(Icons.flash_on, "Electricity", Colors.yellow),
  Payment(Icons.wifi, "Internet", Colors.orange),
  Payment(Icons.card_giftcard, "Voucher", Colors.green),
  Payment(Icons.medical_services, "Assurance", Colors.red),
  Payment(Icons.shopping_cart, "Merchant", Colors.green),
  Payment(Icons.phone_android, "Mobile Credit", Colors.blue),
  Payment(Icons.receipt, "Bill", Colors.orange),
  Payment(Icons.more_horiz, "More", Colors.green),
];
