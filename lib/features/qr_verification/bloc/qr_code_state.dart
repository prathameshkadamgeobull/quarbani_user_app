part of 'qr_code_bloc.dart';

abstract class QrCodeState {}

class QrCodeInitial extends QrCodeState {}

class QrCodeLoaded extends QrCodeState {
  final String barcode;
  final String animalId;
  final String orderId;
  final String qrImage;

  QrCodeLoaded({
    required this.barcode,
    required this.animalId,
    required this.orderId,
    required this.qrImage,
  });
}