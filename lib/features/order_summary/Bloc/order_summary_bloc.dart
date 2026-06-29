import 'package:flutter_bloc/flutter_bloc.dart';

import 'order_summary_event.dart';
import 'order_summary_state.dart';


class OrderSummaryBloc
    extends Bloc<OrderSummaryEvent, OrderSummaryState>{


  OrderSummaryBloc()
      :super(OrderSummaryInitial()){


    on<LoadOrderSummary>((event,emit){

      emit(OrderSummaryLoaded());

    });


  }


}