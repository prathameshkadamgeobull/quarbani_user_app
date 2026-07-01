abstract class OrderTrackingEvent {}


class LoadOrderTracking extends OrderTrackingEvent {

  final String orderId;


  LoadOrderTracking({
    required this.orderId
  });


}