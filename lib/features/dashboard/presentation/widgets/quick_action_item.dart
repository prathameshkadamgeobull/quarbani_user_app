import 'package:flutter/material.dart';

class QuickActionItem extends StatefulWidget {
  final IconData icon;
  final String title;

  const QuickActionItem({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  State<QuickActionItem> createState() => _QuickActionItemState();
}

class _QuickActionItemState extends State<QuickActionItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          height: 62,
          width: 62,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.grey,
              width: 1.5,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(0, 2),
              )
            ],
          ),
          child: Center(
            child: Icon(
              widget.icon,
              color: const Color(0xffE0B400),
              size: 26,
            ),
          ),
        ),

        const SizedBox(height: 8),

        SizedBox(
          width: 85,
          child: Text(
            widget.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}