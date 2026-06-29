abstract class PaymentMethodState{}



class PaymentMethodInitial
    extends PaymentMethodState{}



class PaymentSelected
    extends PaymentMethodState{


  final String method;


  PaymentSelected(this.method);


}