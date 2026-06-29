import 'package:flutter/material.dart';

class AssistantHeader extends StatelessWidget {

  const AssistantHeader({super.key});


  @override
  Widget build(BuildContext context) {


    return Column(
      children: [

        // const SizedBox(height: 2),

        // Online first
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              height: 7,
              width: 7,

              decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
            ),


            const SizedBox(width: 6),


            const Text(
              "Online",
              style: TextStyle(
                color: Colors.green,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),



        const SizedBox(height: 10),


        // Chatbot icon after online
        Container(

          height: 80,

          width: 80,


          decoration: const BoxDecoration(

            color: Color(0xfffff1d5),

            shape: BoxShape.circle,

          ),


          child: Image.asset(

            'assets/images/chatbot.png',

            fit: BoxFit.contain,

          ),

        ),


        const SizedBox(height: 2),

      ],
    );




  }

}