import 'package:flutter_bloc/flutter_bloc.dart';

import 'live_tracking_event.dart';
import 'live_tracking_state.dart';

class LiveTrackingBloc extends Bloc<LiveTrackingEvent, LiveTrackingState> {
  LiveTrackingBloc() : super(const LiveTrackingState()) {

    /// 🔔 Notify Me
    on<NotifyMePressed>((event, emit) {
      emit(
        state.copyWith(
          notificationEnabled: true,
        ),
      );
    });

    /// 🎥 Load Live Video URL
    on<LoadLiveVideoEvent>((event, emit) {
      emit(
        state.copyWith(
          liveVideoUrl: event.liveVideoUrl,
          isLive: true,
        ),
      );
    });

    /// ▶️ Start Live
    on<StartLiveVideoEvent>((event, emit) {
      emit(
        state.copyWith(
          isLive: true,
          isCompleted: false,
        ),
      );
    });

    /// 🔇 Mute / Unmute
    on<ToggleMuteEvent>((event, emit) {
      emit(
        state.copyWith(
          isMuted: !state.isMuted,
        ),
      );
    });

    /// 📷 Camera On / Off
    on<ToggleCameraEvent>((event, emit) {
      emit(
        state.copyWith(
          isCameraOn: !state.isCameraOn,
        ),
      );
    });

    /// ⏺ Recording Toggle
    on<ToggleRecordingEvent>((event, emit) {
      emit(
        state.copyWith(
          isRecording: !state.isRecording,
        ),
      );
    });

    /// 📞 End Live
    on<EndLiveVideoEvent>((event, emit) {
      emit(
        state.copyWith(
          isCompleted: true,
          isLive: false,
          isRecording: false,
        ),
      );
    });
  }
}