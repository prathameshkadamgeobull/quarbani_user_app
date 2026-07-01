import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/Models/animal_assigned_model.dart';

part 'qr_code_event.dart';
part 'qr_code_state.dart';


class QrCodeBloc extends Bloc<QrCodeEvent, QrCodeState> {

  QrCodeBloc() : super(QrCodeInitial()) {


    on<SetQrDataEvent>((event, emit) {

      emit(
        QrCodeLoaded(

          barcode: event.model.barcode,

          animalId: event.model.animalId,

          orderId: event.model.orderId,

          qrImage: "assets/images/qr.png",

        ),
      );

    });

  }

}