import 'package:e_wallet/cubit/navigaton_cubit.dart';
import 'package:e_wallet/model/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 🟠 Floating QR Button
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {
          // Handle QR scan
        },

        shape: const CircleBorder(),
        child: const Icon(Icons.qr_code_scanner, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // 🟢 Bottom Navigation Bar
      bottomNavigationBar: BottomAppBar(
        color: Colors.white24,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: BlocBuilder<NavigatonCubit, int>(
            builder: (context, currentIndex) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.home_filled,
                          color: currentIndex == 0
                              ? const Color(0xFF105D38)
                              : null,
                          size: 30,
                        ),
                        onPressed: () =>
                            context.read<NavigatonCubit>().changeTap(0),
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        icon: Icon(
                          Icons.bar_chart_outlined,
                          color: currentIndex == 1
                              ? const Color(0xFF105D38)
                              : null,
                          size: 30,
                        ),
                        onPressed: () =>
                            context.read<NavigatonCubit>().changeTap(1),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.notifications_outlined,
                          color: currentIndex == 2
                              ? const Color(0xFF105D38)
                              : null,
                          size: 30,
                        ),
                        onPressed: () =>
                            context.read<NavigatonCubit>().changeTap(2),
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        icon: Icon(
                          Icons.person_outline,
                          color: currentIndex == 3
                              ? const Color(0xFF105D38)
                              : null,
                          size: 30,
                        ),
                        onPressed: () =>
                            context.read<NavigatonCubit>().changeTap(3),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),

      // Just for placeholder
      body: BlocBuilder<NavigatonCubit, int>(
        builder: (context, currentIndex) {
          return pages[currentIndex];
        },
      ),
    );
  }
}
