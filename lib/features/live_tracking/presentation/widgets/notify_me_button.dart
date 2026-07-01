import 'package:flutter/material.dart';

class NotifyMeButton extends StatefulWidget {
  final VoidCallback onPressed;
  final bool isEnabled;

  const NotifyMeButton({
    super.key,
    required this.onPressed,
    this.isEnabled = true,
  });

  @override
  State<NotifyMeButton> createState() => _NotifyMeButtonState();
}

class _NotifyMeButtonState extends State<NotifyMeButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: widget.isEnabled ? widget.onPressed : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF0B7A75),
          disabledBackgroundColor: Colors.grey.shade400,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: const Text(
          "Notify Me",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}