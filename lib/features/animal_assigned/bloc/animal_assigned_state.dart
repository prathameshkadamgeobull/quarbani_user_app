// import '../../../core/Models/animal_assigned_model.dart';
//
//
// class AnimalAssignedState{
//
//
//   final AnimalAssignedModel? animal;
//
//
//   AnimalAssignedState({
//
//     this.animal,
//
//   });
//
//
// }



import '../../../core/Models/animal_assigned_model.dart';

abstract class AnimalAssignedState {}

class AnimalAssignedInitial extends AnimalAssignedState {}

class AnimalAssignedLoading extends AnimalAssignedState {}

class AnimalAssignedLoaded extends AnimalAssignedState {
  final AnimalAssignedModel animal;

  AnimalAssignedLoaded(this.animal);
}

class AnimalAssignedError extends AnimalAssignedState {
  final String message;

  AnimalAssignedError(this.message);
}