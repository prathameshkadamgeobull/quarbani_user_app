class LiveTrackingModel {
  final String scheduledDate;
  final String scheduledTime;
  final String liveVideoUrl;

  final bool isLive;
  final bool isMuted;
  final bool isCameraOn;
  final bool isRecording;
  final bool isCompleted;
  final bool notificationEnabled;

  const LiveTrackingModel({
    required this.scheduledDate,
    required this.scheduledTime,
    required this.liveVideoUrl,
    this.isLive = false,
    this.isMuted = false,
    this.isCameraOn = true,
    this.isRecording = false,
    this.isCompleted = false,
    this.notificationEnabled = false,
  });

  /// ✅ Convert API JSON → Model
  factory LiveTrackingModel.fromJson(Map<String, dynamic> json) {
    return LiveTrackingModel(
      scheduledDate: json['scheduledDate'] ?? "",
      scheduledTime: json['scheduledTime'] ?? "",
      liveVideoUrl: json['liveVideoUrl'] ?? "",
      isLive: json['isLive'] ?? false,
      isMuted: json['isMuted'] ?? false,
      isCameraOn: json['isCameraOn'] ?? true,
      isRecording: json['isRecording'] ?? false,
      isCompleted: json['isCompleted'] ?? false,
      notificationEnabled: json['notificationEnabled'] ?? false,
    );
  }

  /// ✅ Model → JSON (for API send)
  Map<String, dynamic> toJson() {
    return {
      "scheduledDate": scheduledDate,
      "scheduledTime": scheduledTime,
      "liveVideoUrl": liveVideoUrl,
      "isLive": isLive,
      "isMuted": isMuted,
      "isCameraOn": isCameraOn,
      "isRecording": isRecording,
      "isCompleted": isCompleted,
      "notificationEnabled": notificationEnabled,
    };
  }
}