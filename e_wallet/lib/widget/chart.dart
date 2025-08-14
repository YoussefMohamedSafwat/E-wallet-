import 'package:e_wallet/cubit/api_cubit.dart';
import 'package:e_wallet/model/summary.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, // center horizontally
            children: [
              Text("weekly", style: TextStyle(fontSize: 20)), Spacer(),
              Row(
                children: [
                  Icon(Icons.arrow_upward, color: Colors.green, size: 18),
                  SizedBox(width: 4),
                  Text(
                    'Income',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(width: 20), // spacing between income & expense
              // Expense label
              Row(
                children: [
                  Icon(Icons.arrow_downward, color: Colors.orange, size: 18),
                  SizedBox(width: 4),
                  Text(
                    'Expense',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ),

        BlocBuilder<ApiCubit, ApiState>(
          builder: (context, state) {
            return barChart(state.fetchedData.weekly);
          },
        ),
      ],
    );
  }

  AspectRatio barChart(List<Weekly> weekly) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: BarChart(
        BarChartData(
          barGroups: [
            ...weekly.map((element) {
              return makeGroupData(
                element.day,
                double.parse(element.income.replaceAll("\$", "").trim()),
                double.parse(element.expense.replaceAll("\$", "").trim()),
              );
            }),
          ],
          titlesData: FlTitlesData(
            leftTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),

            rightTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),

            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  const days = [
                    'Mon',
                    'Tue',
                    'Wed',
                    'Thu',
                    'Fri',
                    'Sat',
                    'Sun',
                  ];
                  return Text(days[value.toInt()]);
                },
              ),
            ),
          ),
          gridData: const FlGridData(show: false),
          borderData: FlBorderData(show: false),
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(String x, double income, double expense) {
    Map<String, int> dayToInt = {
      "Mon": 0,
      "Tue": 1,
      "Wed": 2,
      "Thu": 3,
      "Fri": 4,
      "Sat": 5,
      "Sun": 6,
    };
    return BarChartGroupData(
      x: dayToInt[x] ?? 0,
      barRods: [
        BarChartRodData(
          toY: income,
          color: Colors.green,
          width: 8,
          borderRadius: BorderRadius.circular(4),
        ),
        BarChartRodData(
          toY: expense,
          color: Colors.orange,
          width: 8,
          borderRadius: BorderRadius.circular(4),
        ),
      ],
    );
  }
}
