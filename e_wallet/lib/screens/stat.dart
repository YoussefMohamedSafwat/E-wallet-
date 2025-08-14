import 'package:e_wallet/widget/chart.dart';
import 'package:e_wallet/widget/summary_box.dart';
import 'package:flutter/material.dart';

class StatScreen extends StatelessWidget {
  const StatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children: [const SummaryBox(), const Chart()]),
      ),
    );
  }
}
