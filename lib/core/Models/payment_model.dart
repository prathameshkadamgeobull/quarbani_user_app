class PaymentMethodModel {

  final String name;
  final String image;
  final bool isSelected;


  PaymentMethodModel({

    required this.name,
    required this.image,
    this.isSelected = false,


  });


  PaymentMethodModel copyWith({

    bool? isSelected,

  }){


    return PaymentMethodModel(


      name: name,

      image: image,

      isSelected: isSelected ?? this.isSelected,

    );


  }


}