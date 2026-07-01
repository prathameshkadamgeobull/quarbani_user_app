import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/Models/order_status_model.dart';
import 'order_tracking_event.dart';
import 'order_tracking_state.dart';





class OrderTrackingBloc
    extends Bloc<OrderTrackingEvent, OrderTrackingState>{



  OrderTrackingBloc()
      :super(OrderTrackingState.initial()){



    on<LoadOrderTracking>((event, emit){


      emit(

          OrderTrackingState(

              steps:[


                OrderStatusModel(
                  title: "Animal Selected",
                  date: "02 May 2024 - 10:30 AM",
                  completed:true,
                ),


                OrderStatusModel(
                  title: "Scheduled",
                  date: "02 May 2024 - 10:32 AM",
                  completed:true,
                ),



                OrderStatusModel(
                  title: "Payment Completed",
                  date: "02 May 2024 - 10:34 AM",
                  completed:true,
                ),



                OrderStatusModel(
                  title: "Order Confirmed",
                  date: "02 May 2024 - 10:35 AM",
                  completed:true,
                ),



                OrderStatusModel(
                  title: "Animal Assigned",
                  date: "02 May 2024 - 10:40 AM",
                  completed:true,
                ),



                OrderStatusModel(
                  title: "QR / Barcode Generated",
                  date: "02 May 2024 - 10:41 AM",
                  completed:true,
                ),



                OrderStatusModel(
                  title:"Sacrifice In Progress",
                  date:"10 Dhul Hijjah - 06:00 AM",
                  completed:false,
                ),


              ]

          )

      );


    });


  }


}