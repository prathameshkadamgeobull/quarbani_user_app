import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

import '../../bloc/live_tracking_bloc.dart';
import '../../bloc/live_tracking_state.dart';

class LiveVideoPage extends StatefulWidget {
  final String videoUrl;
  final bool isRecording;

  const LiveVideoPage({
    super.key,
    required this.videoUrl,
    required this.isRecording,
  });

  @override
  State<LiveVideoPage> createState() => _LiveVideoPageState();
}

class _LiveVideoPageState extends State<LiveVideoPage> {
  late VideoPlayerController _controller;
  bool _isInitialized = false;
  bool _popupShown = false;

  @override
  void initState() {
    super.initState();
    _initVideo();
  }

  Future<void> _initVideo() async {
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.videoUrl),
    );

    await _controller.initialize();

    _controller
      ..setLooping(true)
      ..play();

    if (mounted) {
      setState(() {
        _isInitialized = true;
      });
    }
  }

  void _showLivePopup() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Live Started"),
        content: const Text("The live video is now active."),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          )
        ],
      ),
    );
  }

  void _handleMute(bool isMuted) {
    if (_controller.value.isInitialized) {
      _controller.setVolume(isMuted ? 0.0 : 1.0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LiveTrackingBloc, LiveTrackingState>(
      builder: (context, state) {

        // POPUP ON LIVE START
        if (state.isLive && !_popupShown) {
          _popupShown = true;

          WidgetsBinding.instance.addPostFrameCallback((_) {
            _showLivePopup();
          });
        }

        _handleMute(state.isMuted);

        return Scaffold(
          backgroundColor: Colors.black,
          body: Stack(
            children: [

              /// VIDEO
              Center(
                child: _isInitialized
                    ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
                    : const CircularProgressIndicator(),
              ),

              const Positioned(
                top: 40,
                left: 16,
                child: _Badge(text: "LIVE", color: Colors.red),
              ),

              if (state.isRecording)
                const Positioned(
                  top: 40,
                  right: 16,
                  child: _Badge(text: "REC", color: Colors.red),
                ),
            ],
          ),
        );
      },
    );
  }
}

class _Badge extends StatelessWidget {
  final String text;
  final Color color;

  const _Badge({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}