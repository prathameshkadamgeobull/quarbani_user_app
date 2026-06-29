abstract class PaymentMethodEvent{}



class SelectPayment
    extends PaymentMethodEvent{


  final String method;


  SelectPayment(this.method);


}