import 'package:flutter/material.dart';

import '../../../../core/constants/theme/app_colors.dart';
import '../../../../core/constants/theme/app_text_styles.dart';

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
              style: AppTextStyles.link,
            ),

          ],
        ),



        const SizedBox(height: 10),


        // Chatbot icon after online
        Container(

          height: 80,

          width: 80,


          decoration: const BoxDecoration(

            color: AppColors.lightGreen,

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