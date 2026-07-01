abstract class LiveTrackingEvent {}

class NotifyMePressed extends LiveTrackingEvent {}

class LoadLiveVideoEvent extends LiveTrackingEvent {
  final String liveVideoUrl;

  LoadLiveVideoEvent({
    required this.liveVideoUrl,
  });
}

class StartLiveVideoEvent extends LiveTrackingEvent {}

class EndLiveVideoEvent extends LiveTrackingEvent {}

class ToggleMuteEvent extends LiveTrackingEvent {}

class ToggleCameraEvent extends LiveTrackingEvent {}
class ToggleRecordingEvent extends LiveTrackingEvent {}