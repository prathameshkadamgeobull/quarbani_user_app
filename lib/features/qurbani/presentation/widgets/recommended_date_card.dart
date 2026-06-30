import 'package:flutter/material.dart';

class RecommendedDateCard extends StatefulWidget {
  final String date;
  final String subtitle;
  final bool isSelected;
  final bool isRecommended;
  final VoidCallback onTap;

  const RecommendedDateCard({
    super.key,
    required this.date,
    required this.subtitle,
    required this.isSelected,
    required this.isRecommended,
    required this.onTap,
  });

  @override
  State<RecommendedDateCard> createState() => _RecommendedDateCardState();
}

class _RecommendedDateCardState extends State<RecommendedDateCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: widget.isSelected
              ? const Color(0xff0B4A3A).withOpacity(0.06)
              : Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: widget.isSelected
                ? const Color(0xff0B4A3A)
                : Colors.grey.shade300,
            width: widget.isSelected ? 2 : 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(
              widget.isSelected
                  ? Icons.radio_button_checked
                  : Icons.radio_button_off,
              color: const Color(0xff0B4A3A),
            ),

            const SizedBox(width: 14),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.date,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    widget.subtitle,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            if (widget.isRecommended)
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.amber.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.orange,
                    ),
                    SizedBox(width: 4),
                    Text(
                      "Recommended",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}