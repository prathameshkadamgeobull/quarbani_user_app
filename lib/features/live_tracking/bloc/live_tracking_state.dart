class LiveTrackingState {
  final String scheduledDate;
  final String scheduledTime;
  final bool notificationEnabled;

  final String liveVideoUrl;

  final bool isLive;

  final bool isMuted;

  final bool isCameraOn;

  final bool isCompleted;

  final bool isRecording;

  final String animalId;

  const LiveTrackingState({
    this.scheduledDate = "",
    this.scheduledTime = "",
    this.notificationEnabled = false,
    this.animalId = "",

    // Temporary demo video
    // Replace this URL with API response later
    this.liveVideoUrl =
    "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",

    this.isLive = false,
    this.isMuted = false,
    this.isCameraOn = true,
    this.isCompleted = false,
    this.isRecording = false,
  });

  String get videoUrl => liveVideoUrl;

  LiveTrackingState copyWith({
    String? scheduledDate,
    String? scheduledTime,
    bool? notificationEnabled,
    String? animalId,
    String? liveVideoUrl,
    bool? isLive,
    bool? isMuted,
    bool? isCameraOn,
    bool? isCompleted,
    bool? isRecording,
  }) {
    return LiveTrackingState(
      scheduledDate: scheduledDate ?? this.scheduledDate,
      scheduledTime: scheduledTime ?? this.scheduledTime,
      notificationEnabled:
      notificationEnabled ?? this.notificationEnabled,
      animalId: animalId ?? this.animalId,
      liveVideoUrl: liveVideoUrl ?? this.liveVideoUrl,
      isLive: isLive ?? this.isLive,
      isMuted: isMuted ?? this.isMuted,
      isCameraOn: isCameraOn ?? this.isCameraOn,
      isCompleted: isCompleted ?? this.isCompleted,
      isRecording: isRecording ?? this.isRecording,
    );
  }
}