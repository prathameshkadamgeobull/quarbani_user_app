import 'package:flutter/material.dart';

import '../../../../core/Models/chat_message.dart';
import '../../../../core/constants/theme/app_colors.dart';
import '../../../../core/constants/theme/app_text_styles.dart';


class MessageBubble extends StatelessWidget {
  final ChatMessage message;

  const MessageBubble({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: message.isUser
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [

          // Assistant icon
          // if (!message.isUser)
          //   Container(
          //     margin: const EdgeInsets.only(
          //       right: 10,
          //       top: 4,
          //     ),
          //     height: 38,
          //     width: 38,
          //     decoration: BoxDecoration(
          //       color: const Color(0xffFFF3D8),
          //       shape: BoxShape.circle,
          //     ),
          //     child: const Icon(
          //       Icons.smart_toy_rounded,
          //       size: 22,
          //       color: Color(0xff0F6B43),
          //     ),
          //   ),


          Flexible(
            child: Column(
              crossAxisAlignment: message.isUser
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,

              children: [

                Container(

                  constraints: BoxConstraints(

                    maxWidth: MediaQuery.of(context).size.width * .75,

                  ),


                  padding: const EdgeInsets.symmetric(

                    horizontal:16,

                    vertical:12,

                  ),


                  decoration: BoxDecoration(


                    color: message.isUser

                        ? AppColors.green

                        : AppColors.white,



                    borderRadius: BorderRadius.only(


                      topLeft: const Radius.circular(16),

                      topRight: const Radius.circular(16),


                      bottomLeft:

                      Radius.circular(message.isUser ? 16 : 5),


                      bottomRight:

                      Radius.circular(message.isUser ? 5 : 16),

                    ),



                    border: message.isUser

                        ? null

                        : Border.all(

                      color: AppColors.greyBorder,

                    ),



                  ),



                  child: Text(
                    message.message,
                    style: AppTextStyles.body.copyWith(
                      color: message.isUser
                          ? AppColors.white
                          : AppColors.black,
                      height: 1.5,
                    ),


                  ),

                ),

                const SizedBox(height: 4),


                Text(
                  "10:30 AM",
                  style: AppTextStyles.body.copyWith(
                    fontSize: 12,
                    color: AppColors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}