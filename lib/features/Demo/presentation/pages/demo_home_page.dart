import 'package:flutter/material.dart';
import 'package:quarbani_user_app/app/routes/routes_names.dart';


class DemoHomePage extends StatelessWidget {

  const DemoHomePage({super.key});


  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(

        title: const Text(
          "Quarbani Demo",
        ),

      ),


      body: Padding(

        padding: const EdgeInsets.all(20),


        child: Column(

          children: [


            demoButton(
              context,
              "AI Chat Bot",
              RouteNames.aiChat,
            ),


            demoButton(
              context,
              "Animal Selection",
              RouteNames.animalSelection,
            ),


            demoButton(
              context,
              "Order Summary",
              RouteNames.orderSummary,
            ),


            demoButton(
              context,
              "Payment Method",
              RouteNames.paymentMethod,
            ),

            demoButton(
              context,
              "Payment Success",
              RouteNames.paymentSuccess,
            ),


          ],

        ),

      ),

    );

  }



  Widget demoButton(
      BuildContext context,
      String title,
      String route,
      ) {


    return Padding(

      padding: const EdgeInsets.only(
        bottom:15,
      ),


      child: SizedBox(

        width:double.infinity,


        child: ElevatedButton(

          onPressed:(){

            Navigator.pushNamed(
              context,
              route,
            );

          },


          child: Text(title),

        ),

      ),

    );


  }


}