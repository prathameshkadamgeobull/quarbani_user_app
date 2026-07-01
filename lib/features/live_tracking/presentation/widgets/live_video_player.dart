import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class LiveVideoPlayer extends StatefulWidget {
  final String videoUrl;
  final bool isRecording;

  const LiveVideoPlayer({
    super.key,
    required this.videoUrl,
    required this.isRecording,
  });

  @override
  State<LiveVideoPlayer> createState() => _LiveVideoPlayerState();
}

class _LiveVideoPlayerState extends State<LiveVideoPlayer> {
  late VideoPlayerController _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

  Future<void> _initializeVideo() async {
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.videoUrl),
    );

    await _controller.initialize();

    await _controller.setLooping(true);
    await _controller.play();

    if (mounted) {
      setState(() {
        _isInitialized = true;
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Video
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: _isInitialized
                ? FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _controller.value.size.width,
                height: _controller.value.size.height,
                child: VideoPlayer(_controller),
              ),
            )
                : const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),

        /// LIVE Badge
        Positioned(
          top: 16,
          left: 16,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Text(
              "LIVE",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        /// REC Badge
        if (widget.isRecording)
          Positioned(
            top: 16,
            right: 16,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.fiber_manual_record,
                    color: Colors.white,
                    size: 12,
                  ),
                  SizedBox(width: 4),
                  Text(
                    "REC",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

        /// Timer
        const Positioned(
          top: 18,
          left: 78,
          child: Text(
            "00:18:24",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
        ),

        /// Bottom Details
        Positioned(
          left: 18,
          right: 18,
          bottom: 22,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Animal ID : GA-78945",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 6),
              Row(
                children: [
                  Text(
                    "Status : ",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Verified",
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.check_circle,
                    color: Colors.greenAccent,
                    size: 18,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}