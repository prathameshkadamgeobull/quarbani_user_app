import 'package:flutter/material.dart';

class AIRecommendationCard extends StatefulWidget {
  final String time;
  final String subtitle;

  const AIRecommendationCard({
    super.key,
    required this.time,
    required this.subtitle,
  });

  @override
  State<AIRecommendationCard> createState() =>
      _AIRecommendationCardState();
}

class _AIRecommendationCardState
    extends State<AIRecommendationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xffEAF7F2),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: const Color(0xff0B4A3A).withOpacity(0.2),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const CircleAvatar(
            radius: 22,
            backgroundColor: Color(0xff0B4A3A),
            child: Icon(
              Icons.auto_awesome,
              color: Colors.white,
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Text(
                  "AI Recommended",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0B4A3A),
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  widget.time,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  widget.subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}