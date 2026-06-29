class OrderSummaryModel {

  final String animal;
  final String date;
  final String timeSlot;
  final String vendor;
  final String quantity;
  final double amount;


  OrderSummaryModel({

    required this.animal,
    required this.date,
    required this.timeSlot,
    required this.vendor,
    required this.quantity,
    required this.amount,

  });


  factory OrderSummaryModel.fromJson(
      Map<String, dynamic> json
      ) {

    return OrderSummaryModel(

      animal: json['animal'] ?? '',
      date: json['date'] ?? '',
      timeSlot: json['timeSlot'] ?? '',
      vendor: json['vendor'] ?? '',
      quantity: json['quantity'] ?? '',
      amount: (json['amount'] ?? 0).toDouble(),

    );

  }


  Map<String,dynamic> toJson(){

    return {

      "animal": animal,
      "date": date,
      "timeSlot": timeSlot,
      "vendor": vendor,
      "quantity": quantity,
      "amount": amount,

    };

  }


}