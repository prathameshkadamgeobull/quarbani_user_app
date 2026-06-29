class PaymentSuccessModel {


  final String orderId;
  final double amount;
  final String status;
  final String message;


  PaymentSuccessModel({

    required this.orderId,
    required this.amount,
    required this.status,
    required this.message,

  });



  factory PaymentSuccessModel.fromJson(
      Map<String,dynamic> json
      ){

    return PaymentSuccessModel(

      orderId: json['orderId'] ?? '',

      amount: (json['amount'] ?? 0).toDouble(),

      status: json['status'] ?? '',

      message: json['message'] ?? '',

    );

  }



  Map<String,dynamic> toJson(){

    return {

      "orderId": orderId,

      "amount": amount,

      "status": status,

      "message": message,

    };

  }


}