import 'package:flutter/material.dart';


class QRVerificationPage extends StatelessWidget {

  const QRVerificationPage({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,


      appBar: AppBar(

        backgroundColor: Colors.white,

        elevation: 0,

        centerTitle: true,

        title: const Text(

          "QR / Barcode",

          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),

        ),

        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),

      ),



      body: Padding(

        padding: const EdgeInsets.all(20),


        child: Column(

          children: [


            const Text(

              "Show this code at the time of\nsacrifice verification",

              textAlign: TextAlign.center,


              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),

            ),



            const SizedBox(height: 25),



            Container(

              height: 180,

              width: 180,


              padding: const EdgeInsets.all(15),


              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(15),

                border: Border.all(
                  color: Colors.grey.shade300,
                ),

              ),


              child: Image.asset(

                "assets/images/qr.png",

                fit: BoxFit.contain,

              ),

            ),



            const SizedBox(height:30),



            Container(

              padding: const EdgeInsets.all(15),


              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(12),

                  boxShadow:[

                    BoxShadow(

                      color: Colors.grey.shade200,

                      blurRadius:8,

                    )

                  ]

              ),



              child: Column(

                children:[


                  detailRow(
                    "Barcode",
                    "9876 5432 1098 7654",
                  ),


                  detailRow(
                    "Animal ID",
                    "GA-78945",
                  ),


                  detailRow(
                    "Order ID",
                    "QB-2024-0001258",
                  ),


                ],

              ),

            ),



            const Spacer(),



            const Text(

              "Do not share this code except\nwith the slaughterhouse staff.",

              textAlign: TextAlign.center,

            ),



            const SizedBox(height:20),



            SizedBox(

              width:double.infinity,

              height:48,


              child:ElevatedButton(

                onPressed:(){},


                style:ElevatedButton.styleFrom(

                  backgroundColor:
                  const Color(0xff006B45),

                  shape:RoundedRectangleBorder(

                    borderRadius:
                    BorderRadius.circular(8),

                  ),

                ),


                child:const Text(

                  "Download",

                  style:TextStyle(
                    color:Colors.white,
                  ),

                ),

              ),

            )



          ],

        ),

      ),

    );

  }





  Widget detailRow(String title,String value){

    return Padding(

      padding:const EdgeInsets.symmetric(vertical:8),


      child:Row(

        mainAxisAlignment:
        MainAxisAlignment.spaceBetween,


        children:[


          Text(
            title,
            style:const TextStyle(
              color:Colors.grey,
            ),
          ),



          Text(
            value,
            style:const TextStyle(
              fontWeight:FontWeight.w600,
            ),
          )


        ],

      ),

    );

  }


}