import 'package:flutter_bloc/flutter_bloc.dart';

import 'qurbani_event.dart';
import 'qurbani_state.dart';

class QurbaniBloc extends Bloc<QurbaniEvent, QurbaniState> {
  QurbaniBloc() : super(const QurbaniState()) {
    on<SelectDateEvent>((event, emit) {
      emit(
        state.copyWith(
          selectedDateIndex: event.selectedIndex,
          selectedDate: event.selectedDate,
        ),
      );
    });

    on<SelectTimeSlotEvent>((event, emit) {
      emit(
        state.copyWith(
          selectedTimeSlotIndex: event.selectedIndex,
          selectedTimeSlot: event.selectedTime,
        ),
      );
    });

    on<SelectVendorEvent>((event, emit) {
      emit(
        state.copyWith(
          selectedVendorIndex: event.selectedIndex,
        ),
      );
    });
  }
}