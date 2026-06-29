import 'package:flutter/material.dart';
import '../../../../app/routes/routes_names.dart';
import '../widgets/payment_option_tile.dart';


class PaymentMethodPage extends StatefulWidget {

  const PaymentMethodPage({super.key});


  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();

   }
class _PaymentMethodPageState extends State<PaymentMethodPage> {
  bool isChecked = false;


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(

          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),

          child:SingleChildScrollView(
            child: Column(

              children: [
                const SizedBox(height: 15),

                // HEADER
                SizedBox(
                  height:50,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      const Text(
                        "Payment Method",
                        style: TextStyle(
                          fontSize:16,
                          fontWeight:FontWeight.w800,
                          color:Colors.black,
                        ),
                      ),


                      Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),

                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height:25),

                // TOTAL AMOUNT

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal:15,
                    vertical:16,
                  ),

                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(12),
                    border: Border.all(
                      color:Colors.grey.shade300,

                    ),

                  ),

                  child: Row(

                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: const [

                      Text(

                        "Total Amount",
                        style:TextStyle(
                          fontSize:15,
                          fontWeight:FontWeight.w800,
                          color: const Color(0xff000000),
                        ),
                      ),
                      Text(
                        "SAR 650",
                        style:TextStyle(
                          fontSize:16,
                          fontWeight:FontWeight.w800,
                        ),
                      ),
                    ],

                  ),

                ),

                const SizedBox(height:15),

                // CARD

                Container(
                  padding:const EdgeInsets.all(14),
                  decoration:BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(12),
                    border:Border.all(
                      color:Colors.grey.shade500,

                    ),

                  ),

                  child:Column(

                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Recommended",
                        style: TextStyle(
                          fontSize:12,
                          fontWeight: FontWeight.w600,
                            color: Color(0xff1A1A1A),
                        ),
                      ),

                      const SizedBox(height:8),

                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [

                          const Text(
                            "Credit / Debit Card",
                            style: TextStyle(
                              fontSize:17,
                              fontWeight:FontWeight.w900,
                              color: Color(0xff000000),
                            ),

                          ),

                          Row(

                            children: [
                              Image.asset(
                                "assets/images/visa.jpg",
                                width:38,
                                height:22,
                                fit: BoxFit.contain,
                              ),

                              const SizedBox(width:5),
                              Image.asset(
                                "assets/images/mastercard.jpg",
                                width:38,
                                height:22,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width:5),
                              Image.asset(
                                "assets/images/mada.jpg",
                                width:30,
                                height:22,
                                fit: BoxFit.contain,
                              ),
                            ],
                          ),
                        ],
                      ),
                          ],
                  ),
                ),


                const SizedBox(height:12),
                paymentOption(
                  "Apple Pay",
                  "assets/images/apple.jpg",
                ),
                paymentOption(
                  "mada",
                  "assets/images/mada.jpg",
                ),
                paymentOption(
                  "STC Pay",
                  "assets/images/stc.jpg",
                ),

                paymentOption(
                  "PayPal",
                  "assets/images/Paypal.jpg",
                ),
                paymentOption(
                  "Bank Transfer",
                  "assets/images/banktransfer.jpg",
                ),
                const SizedBox(height: 40,),

                Row(
                  children:[
                    Checkbox(

                      value: isChecked,

                      activeColor: const Color(0xff006B3F),

                      onChanged: (value){

                        setState(() {

                          isChecked = value!;

                        });

                      },

                    ),



                    RichText(

                      text: const TextSpan(

                        style: TextStyle(

                          fontSize: 13,

                          fontWeight: FontWeight.w600,

                          color: Colors.black,

                        ),

                        children: [

                          TextSpan(
                            text: "I agree to the ",
                          ),

                          TextSpan(
                            text: "Terms & Conditions",
                            style: TextStyle(
                              color: Color(0xff006B3F),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height:10),

                SizedBox(

                  width:double.infinity,

                  height:50,

                  child:ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff004D2C),

                      shape:
                      RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(10),

                      ),
                    ),
                    onPressed:(){

                      Navigator.pushNamed(

                        context,

                        RouteNames.paymentSuccess,

                      );
                    },
                    child:const Text(
                      "Pay SAR 650",
                      style:TextStyle(
                        color:Colors.white,
                        fontWeight:FontWeight.bold,
                      ),
                    ),

                  ),
                ),

                const SizedBox(height:15),

              ],

            ),
          ),

        ),

      ),

    );

  }

}