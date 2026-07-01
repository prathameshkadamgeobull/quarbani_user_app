part of 'qr_code_bloc.dart';

abstract class QrCodeEvent {}

class SetQrDataEvent extends QrCodeEvent {
  final AnimalAssignedModel model;

  SetQrDataEvent(this.model);
}