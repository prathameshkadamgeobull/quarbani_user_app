class AnimalAssignedModel {
  final String animalId;
  final String image;
  final String type;
  final String age;
  final String weight;
  final String message;

  final String barcode;
  final String orderId;

  AnimalAssignedModel({
    required this.animalId,
    required this.image,
    required this.type,
    required this.age,
    required this.weight,
    required this.message,
    required this.barcode,
    required this.orderId,
  });

  // 🔥 Optional but IMPORTANT for API (recommended)
//   factory AnimalAssignedModel.fromJson(Map<String, dynamic> json) {
//     return AnimalAssignedModel(
//       animalId: json['animalId'] ?? '',
//       image: json['image'] ?? '',
//       type: json['type'] ?? '',
//       age: json['age'] ?? '',
//       weight: json['weight'] ?? '',
//       message: json['message'] ?? '',
//       barcode: '', orderId: '',
//     );
//   }
//
//   // 🔥 Optional (for sending data back if needed)
//   Map<String, dynamic> toJson() {
//     return {
//       'animalId': animalId,
//       'image': image,
//       'type': type,
//       'age': age,
//       'weight': weight,
//       'message': message,
//     };
//   }
}