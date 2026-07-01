// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import 'animal_assigned_event.dart';
// import 'animal_assigned_state.dart';
//
//
// class AnimalAssignedBloc
//     extends Bloc<AnimalAssignedEvent,AnimalAssignedState>{
//
//
//   AnimalAssignedBloc()
//       :super(AnimalAssignedState()){
//
//
//     on<LoadAnimalAssigned>((event,emit){
//
//
//       emit(
//
//           AnimalAssignedState(
//
//             animal: null,
//
//           )
//
//       );
//
//
//     });
//
//
//   }
//
//
// }


import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/Models/animal_assigned_model.dart';
import 'animal_assigned_event.dart';
import 'animal_assigned_state.dart';


class AnimalAssignedBloc extends Bloc<AnimalAssignedEvent, AnimalAssignedState> {
  AnimalAssignedBloc() : super(AnimalAssignedInitial()) {
    on<LoadAnimalAssigned>(_onLoad);
  }

  void _onLoad(
      LoadAnimalAssigned event,
      Emitter<AnimalAssignedState> emit,
      ) async {
    emit(AnimalAssignedLoading());

    try {
      // 🔥 dummy data (later replace API)
      final data = AnimalAssignedModel(
        animalId: "GA-78945",
        type: "Goat",
        age: "1-2 Years",
        weight: "25-28 Kg",
        image: "https://images.unsplash.com/photo-1548550023-2bdb3c5beed7",
        message: "Your animal is healthy and ready for Qurbani.", barcode: '', orderId: '',
      );

      await Future.delayed(const Duration(seconds: 1));

      emit(AnimalAssignedLoaded(data));
    } catch (e) {
      emit(AnimalAssignedError("Something went wrong"));
    }
  }
}