import 'package:flutter_bloc/flutter_bloc.dart';

import 'payment_method_event.dart';
import 'payment_method_state.dart';



class PaymentMethodBloc
    extends Bloc<PaymentMethodEvent,PaymentMethodState>{


  PaymentMethodBloc()
      :super(PaymentMethodInitial()){


    on<SelectPayment>((event,emit){


      emit(
          PaymentSelected(event.method)
      );


    });


  }

}