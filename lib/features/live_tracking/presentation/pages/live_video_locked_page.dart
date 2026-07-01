import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

import '../../bloc/live_tracking_bloc.dart';
import '../../bloc/live_tracking_state.dart';

class LiveVideoActivePage extends StatefulWidget {
  final String videoUrl;

  const LiveVideoActivePage({
    super.key,
    required this.videoUrl,
  });

  @override
  State<LiveVideoActivePage> createState() => _LiveVideoActivePageState();
}

class _LiveVideoActivePageState extends State<LiveVideoActivePage> {
  late VideoPlayerController _controller;

  bool _isInitialized = false;
  bool _isRecording = false;

  Timer? _recordTimer;
  final List<String> _recordedFrames = [];

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

    setState(() {
      _isInitialized = true;
    });
  }

  void _onSync() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Synced with vendor live stream"),
      ),
    );

    // TODO: call API / websocket sync event
  }

  void _startRecording() {
    setState(() {
      _isRecording = true;
      _recordedFrames.clear();
    });

    _recordTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _recordedFrames.add("frame_${DateTime.now().millisecondsSinceEpoch}");
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Recording started")),
    );
  }

  void _stopRecording() {
    setState(() {
      _isRecording = false;
    });

    _recordTimer?.cancel();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Recording stopped (${_recordedFrames.length}s captured)"),
      ),
    );
  }

  @override
  void dispose() {
    _recordTimer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LiveTrackingBloc, LiveTrackingState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: _isInitialized
              ? Stack(
            children: [

              /// 🎥 LIVE STREAM
              SizedBox.expand(
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: SizedBox(
                    width: _controller.value.size.width,
                    height: _controller.value.size.height,
                    child: VideoPlayer(_controller),
                  ),
                ),
              ),

              Positioned(
                top: 50,
                left: 16,
                child: _badge("LIVE", Colors.red),
              ),

              Positioned(
                top: 45,
                right: 16,
                child: ElevatedButton(
                  onPressed: _onSync,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text("SYNC"),
                ),
              ),

              Positioned(
                bottom: 100,
                right: 16,
                child: FloatingActionButton(
                  backgroundColor:
                  _isRecording ? Colors.red : Colors.green,
                  onPressed:
                  _isRecording ? _stopRecording : _startRecording,
                  child: Icon(
                    _isRecording ? Icons.stop : Icons.fiber_manual_record,
                  ),
                ),
              ),

              Positioned(
                bottom: 30,
                left: 16,
                right: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Animal ID: GA-78945",
                      style:  TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Status: Verified",
                      style: TextStyle(color: Colors.greenAccent),
                    ),
                  ],
                ),
              ),
            ],
          )
              : const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }

  Widget _badge(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}