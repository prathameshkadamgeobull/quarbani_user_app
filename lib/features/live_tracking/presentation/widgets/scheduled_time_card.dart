import 'package:flutter/material.dart';

class ScheduledTimeCard extends StatefulWidget {
  final String date;
  final String time;

  const ScheduledTimeCard({
    super.key,
    required this.date,
    required this.time,
  });

  @override
  State<ScheduledTimeCard> createState() => _ScheduledTimeCardState();
}

class _ScheduledTimeCardState extends State<ScheduledTimeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: const Color(0xFFE5E7EB),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  Icons.schedule,
                  color: Color(0xFF0B7A75),
                  size: 22,
                ),
                SizedBox(width: 10),
                Text(
                  "Scheduled Time",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF212121),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Text(
            widget.date,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            widget.time,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}