import '../../../core/Models/order_status_model.dart';


class OrderTrackingState {


  final List<OrderStatusModel> steps;


  OrderTrackingState({
    required this.steps,
  });



  factory OrderTrackingState.initial(){

    return OrderTrackingState(
      steps: [],
    );

  }

}