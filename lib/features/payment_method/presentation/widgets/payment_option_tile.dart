import 'package:flutter/material.dart';


Widget paymentOption(
    String title,
    String imagePath,
    ) {


  return Container(

    margin: const EdgeInsets.only(bottom:10),


    padding: const EdgeInsets.symmetric(
      horizontal:15,
      vertical:15,
    ),


    decoration: BoxDecoration(

      borderRadius: BorderRadius.circular(12),

      border: Border.all(
        color: Colors.grey.shade300,
      ),

    ),



    child: Row(

      children: [


        Image.asset(

          imagePath,

          width:40,

          height:40,

          fit: BoxFit.contain,

        ),



        const SizedBox(width:15),



        Text(

          title,

          style: const TextStyle(

            fontSize:15,

            fontWeight:FontWeight.w700,

            color: Color(0xff111111),

          ),

        ),



        const Spacer(),



        const Icon(

          Icons.arrow_forward_ios,

          size:15,

          color: Colors.black,

        ),


      ],

    ),

  );

}