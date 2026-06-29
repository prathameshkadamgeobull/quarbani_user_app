import 'package:flutter/material.dart';


class PaymentSuccessPage extends StatelessWidget {

  const PaymentSuccessPage({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal:20,
          ),

          child: Column(

            children: [
              const SizedBox(height:50),

              Container(

                height:85,

                width:85,

                decoration: const BoxDecoration(

                  shape: BoxShape.circle,

                  color: Color(0xff004D2C),

                ),

                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size:55,
                ),
              ),

              const SizedBox(height:25),

              const Text(
                "Payment Successful!",
                style: TextStyle(
                  fontSize:22,
                  fontWeight:FontWeight.w900,
                ),
              ),

              const SizedBox(height:15),

              const Text(

                "Your Quarbani order has been\nplaced successfully.",

                textAlign: TextAlign.center,

                style: TextStyle(

                  fontSize:15,

                  fontWeight:FontWeight.w900,

                ),

              ),
              const SizedBox(height:30),

              Container(

                padding: const EdgeInsets.all(15),

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(12),

                  border: Border.all(

                    color: Colors.grey.shade300,

                  ),

                ),


                child: Column(

                  children: [


                    Row(

                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,


                      children: const [

                        Text(
                          "Order ID",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                          ),
                        ),


                        Text(

                          "QB-2024-0001258",

                          style: const TextStyle(

                            fontSize:18,

                            fontWeight: FontWeight.w900,

                            color: Colors.black,

                            fontFamily: "Roboto",

                          ),
                        ),


                      ],

                    ),


                    const SizedBox(height:20),


                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,

                      children: const [
                        Text(
                          "Amount Paid",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800
                          ),
                        ),

                        Text(

                          "SAR 650",

                          style: const TextStyle(

                            fontSize:18,

                            fontWeight: FontWeight.w900,

                            color: Colors.black,

                            fontFamily: "Roboto",

                          ),

                        ),

                      ],

                    ),

                  ],

                ),

              ),

              const SizedBox(height:30),

              const Text(
                "A confirmation has been sent to\nyour email and WhatsApp.",
                textAlign: TextAlign.center,
                style:TextStyle(
                  fontSize:19,
                  fontWeight:FontWeight.w800,
                ),
              ),

              // const Spacer(),
              const SizedBox(height: 70,),


              SizedBox(

                width:double.infinity,

                height:50,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    const Color(0xff004D2C),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(10),
                    ),

                  ),

                  onPressed:(){},
                  child: const Text(
                    "View My Order",
                    style: TextStyle(
                      color:Colors.white,
                      fontWeight:FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height:20),

              TextButton(

                onPressed:(){},
                child: const Text(
                  "Back to Home",
                  style: TextStyle(
                    color:Color(0xff004D2C),
                    fontWeight:FontWeight.bold,
                  ),
                ),

              ),


              const SizedBox(height:20),


            ],

          ),

        ),

      ),

    );

  }

}