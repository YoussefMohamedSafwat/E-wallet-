import 'package:e_wallet/cubit/api_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SummaryBox extends StatelessWidget {
  const SummaryBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFF105D38),
          borderRadius: BorderRadius.circular(20),
        ),

        child: BlocBuilder<ApiCubit, ApiState>(
          builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      "Income",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      state.fetchedData.summary.income,
                      style: const TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height:
                      60, // or double.infinity if wrapped in IntrinsicHeight
                  child: VerticalDivider(color: Colors.white, thickness: 0.4),
                ),
                Column(
                  children: [
                    const Text(
                      "Expense",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      state.fetchedData.summary.expenses,
                      style: const TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
