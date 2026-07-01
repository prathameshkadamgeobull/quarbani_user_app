import 'package:flutter/material.dart';

import '../../../../core/Models/animal_assigned_model.dart';
import '../../../../core/constants/theme/app_colors.dart';
import '../../../../core/constants/theme/app_text_styles.dart';


class QrBarcodePage extends StatelessWidget {

  const QrBarcodePage({super.key});


  @override
  Widget build(BuildContext context) {


    final args = ModalRoute.of(context)?.settings.arguments;


    if(args == null || args is! AnimalAssignedModel){

      return const Scaffold(

        body: Center(

          child: Text(
            "No QR Data Found",
          ),

        ),

      );

    }


    final animal = args;



    return Scaffold(


      backgroundColor: AppColors.white,


      appBar: AppBar(

        backgroundColor: AppColors.white,

        elevation: 0,

        centerTitle: true,


        title: const Text(

          "QR / Barcode",

          style: AppTextStyles.title,

        ),

      ),



      body: Padding(

        padding: const EdgeInsets.all(16),


        child: Column(
          children: [
            const SizedBox(height:15),
            const Text(
              "Show this code at the time of\nsacrifice verification",

              textAlign: TextAlign.center,

              style: AppTextStyles.body,

            ),

            const SizedBox(height:20),




            Container(


              padding: const EdgeInsets.all(15),


              decoration: BoxDecoration(


                borderRadius:
                BorderRadius.circular(16),


                border: Border.all(

                  color: AppColors.greyBorder,

                ),

              ),



              child: Image.asset(

                "assets/images/qr.png",

                height:170,

              ),


            ),





            const SizedBox(height:20),




            Container(

              padding: const EdgeInsets.all(16),

              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(16),

                border: Border.all(

                  color: AppColors.greyBorder,

                ),

              ),


              child: Column(

                children: [

                  _row(
                    "Barcode",
                    animal.barcode,
                  ),
                  _row(
                    "Animal ID",
                    animal.animalId,
                  ),

                  _row(
                    "Order ID",
                    animal.orderId,
                  ),


                ],

              ),

            ),



            const SizedBox(height:20),





            const Text(


              "Do not share this code except\nwith the slaughterhouse staff.",


              textAlign: TextAlign.center,


              style: AppTextStyles.body,


            ),





            const Spacer(),





            SizedBox(


              width: double.infinity,


              height:48,



              child: ElevatedButton(



                style: ElevatedButton.styleFrom(


                  backgroundColor:
                  AppColors.green,


                  shape:
                  RoundedRectangleBorder(


                    borderRadius:
                    BorderRadius.circular(12),


                  ),


                ),





                onPressed:(){},




                child: const Text(


                  "Download",


                  style: AppTextStyles.button,


                ),



              ),


            )


          ],

        ),

      ),

    );

  }






  Widget _row(String title,String value){

    return Padding(

      padding:
      const EdgeInsets.symmetric(vertical:8),

      child: Row(
        mainAxisAlignment:
        MainAxisAlignment.spaceBetween,

        children: [

          Text(

            title,

            style: AppTextStyles.body,

          ),

          // const Spacer(),

          Flexible(


            child: Text(


              value,


              overflow: TextOverflow.ellipsis,


              style: AppTextStyles.label,


            ),


          ),




        ],

      ),


    );


  }


}