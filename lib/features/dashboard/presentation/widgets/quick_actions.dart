import 'package:flutter/material.dart';
import 'quick_action_item.dart';

class QuickActions extends StatefulWidget {
  const QuickActions({super.key});

  @override
  State<QuickActions> createState() => _QuickActionsState();
}

class _QuickActionsState extends State<QuickActions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const Text(
          "Quick Actions",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 20),

        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            QuickActionItem(
              icon: Icons.menu_book,
              title: "How It Works",
            ),

            QuickActionItem(
              icon: Icons.receipt_long,
              title: "My Orders",
            ),

            QuickActionItem(
              icon: Icons.favorite,
              title: "Duas",
            ),

            QuickActionItem(
              icon: Icons.support_agent,
              title: "Support",
            ),
          ],
        ),
      ],
    );
  }
}