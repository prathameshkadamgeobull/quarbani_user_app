import 'package:flutter/material.dart';

import '../widgets/bottom_navbar.dart';
import '../widgets/greeting_card.dart';
import '../widgets/order_status_card.dart';
import '../widgets/quick_actions.dart';
import '../widgets/upcoming_qurbani_card.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const GreetingCard(),

            Padding(
              padding: const EdgeInsets.only(top: 180),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: UpcomingQurbaniCard(),
                  ),

                  const SizedBox(height: 25),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: OrderStatusCard(),
                  ),

                  const SizedBox(height: 25),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: QuickActions(),
                  ),

                  const SizedBox(height: 100),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: const BottomNavbar(),

      // floatingActionButton: Container(
      //   height: 62,
      //   width: 62,
      //   decoration: BoxDecoration(
      //     shape: BoxShape.circle,
      //     color: const Color(0xff0B4A3A),
      //     border: Border.all(
      //       color: Colors.white,
      //       width: 3,
      //     ),
      //     boxShadow: const [
      //       BoxShadow(
      //         color: Colors.black26,
      //         blurRadius: 10,
      //         offset: Offset(0, 4),
      //       ),
      //     ],
      //   ),
      //   child: const Center(
      //     child: Text(
      //       "AI",
      //       style: TextStyle(
      //         color: Colors.white,
      //         fontSize: 20,
      //         fontWeight: FontWeight.bold,
      //         letterSpacing: 1,
      //       ),
      //     ),
      //   ),
      // ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}