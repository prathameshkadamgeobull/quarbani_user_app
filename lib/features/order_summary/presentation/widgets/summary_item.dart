import 'package:flutter/material.dart';


Widget summaryItem(
    IconData icon,
    String title,
    String value,
    ){

  return Padding(

    padding: const EdgeInsets.only(bottom:18),

    child: Row(

      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        SizedBox(
          width:35,
          child: Icon(
            icon,
            size:20,
            color: Colors.orange,
          ),
        ),


        const SizedBox(width:15),



        Expanded(
          child: Column(

            crossAxisAlignment:
            CrossAxisAlignment.start,

            children: [

              Text(
                title,
                style: const TextStyle(
                  fontSize:22,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,

                ),

              ),



              const SizedBox(height:4),

              Text(
                value,
                style: const TextStyle(
                  fontSize:18,
                  color: Color(0xff111111),
                  fontWeight: FontWeight.w700,

                ),

              ),
            ],

          ),

        )

      ],

    ),

  );

}