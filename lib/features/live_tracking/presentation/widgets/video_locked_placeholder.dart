import 'package:flutter/material.dart';

class VideoLockedPlaceholder extends StatefulWidget {
  const VideoLockedPlaceholder({super.key});

  @override
  State<VideoLockedPlaceholder> createState() =>
      _VideoLockedPlaceholderState();
}

class _VideoLockedPlaceholderState
    extends State<VideoLockedPlaceholder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 40,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F7F7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 130,
                height: 130,
                decoration: const BoxDecoration(
                  color: Color(0xFFD3D3D3),
                  shape: BoxShape.circle,
                ),
              ),
              const Icon(
                Icons.videocam_rounded,
                size: 60,
                color: Colors.white,
              ),
              Positioned(
                bottom: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color(0xFF1E1E1E),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.lock,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const Text(
            "Live Video will be available\nat your scheduled time.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFF212121),
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}