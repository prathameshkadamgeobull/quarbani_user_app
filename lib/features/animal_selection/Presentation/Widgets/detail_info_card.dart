import 'package:flutter/material.dart';


class DetailInfoCard extends StatelessWidget {

  final IconData icon;
  final String title;
  final String value;


  const DetailInfoCard({

    super.key,

    required this.icon,

    required this.title,

    required this.value,

  });


  @override
  Widget build(BuildContext context) {


    return Column(

      children: [


        Icon(

          icon,

          color: Color(0xff0F6B43),

          size:24,

        ),


        const SizedBox(height:6),


        Text(
          title,
          style: const TextStyle(
            fontSize:13,
            fontWeight: FontWeight.w600,
            // color:Colors.black87,
            color: Color(0xff000000),

          ),

        ),


        Text(
          value,

          style: const TextStyle(

            fontSize:13,
            color: Color(0xff000000),

            fontWeight:FontWeight.w600,

          ),

        ),


      ],


    );

  }

}