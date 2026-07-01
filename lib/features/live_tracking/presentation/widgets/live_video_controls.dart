import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/live_tracking_bloc.dart';
import '../../bloc/live_tracking_event.dart';
import '../../bloc/live_tracking_state.dart';

class LiveVideoControls extends StatefulWidget {
  const LiveVideoControls({super.key});

  @override
  State<LiveVideoControls> createState() => _LiveVideoControlsState();
}

class _LiveVideoControlsState extends State<LiveVideoControls> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LiveTrackingBloc, LiveTrackingState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              // 🔇 MUTE / UNMUTE
              IconButton(
                onPressed: () {
                  context.read<LiveTrackingBloc>().add(ToggleMuteEvent());
                },
                icon: Icon(
                  state.isMuted ? Icons.volume_off : Icons.volume_up,
                  color: Colors.white,
                ),
              ),

              // ⛶ FULL SCREEN (demo)
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const FullScreenPlaceholder(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.fullscreen,
                  color: Colors.white,
                ),
              ),

              // ⏺ RECORD
              IconButton(
                onPressed: () {
                  context
                      .read<LiveTrackingBloc>()
                      .add(ToggleRecordingEvent());
                },
                icon: Icon(
                  state.isRecording
                      ? Icons.fiber_manual_record
                      : Icons.radio_button_unchecked,
                  color: Colors.red,
                ),
              ),

              // 📞 END LIVE
              IconButton(
                onPressed: () {
                  context.read<LiveTrackingBloc>().add(EndLiveVideoEvent());

                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.call_end,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

/// Temporary fullscreen screen
class FullScreenPlaceholder extends StatelessWidget {
  const FullScreenPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: IconButton(
          icon: const Icon(Icons.close, color: Colors.white, size: 40),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}