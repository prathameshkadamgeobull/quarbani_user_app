import 'package:flutter/material.dart';

import '../../../../core/Models/chat_message.dart';


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

                        ? const Color(0xff086B45)

                        : Colors.white,



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

                      color: Colors.grey.shade200,

                    ),



                  ),



                  child: Text(

                    message.message,


                    style: TextStyle(

                      fontSize:14,

                      height:1.5,


                      color: message.isUser

                          ? Colors.white

                          : Colors.black87,

                    ),


                  ),

                ),

                const SizedBox(height: 4),


                Text(
                  "10:30 AM",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade500,
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