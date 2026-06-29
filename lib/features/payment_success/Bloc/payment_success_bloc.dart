import 'package:flutter_bloc/flutter_bloc.dart';


import 'payment_success_event.dart';
import 'payment_success_state.dart';



class PaymentSuccessBloc
    extends Bloc<PaymentSuccessEvent,PaymentSuccessState>{



  PaymentSuccessBloc()
      :super(PaymentSuccessInitial()){



    on<PaymentCompleted>((event,emit){


      emit(
          PaymentSuccessLoaded()
      );


    });


  }


}