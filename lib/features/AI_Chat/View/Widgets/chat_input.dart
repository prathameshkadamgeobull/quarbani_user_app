import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Bloc/ai_chat_bloc.dart';
import '../../Bloc/ai_chat_event.dart';




class ChatInput extends StatefulWidget {
  const ChatInput({super.key});

  @override
  State<ChatInput> createState() => _ChatInputState();
}


class _ChatInputState extends State<ChatInput> {

  final controller = TextEditingController();


  void sendMessage(BuildContext context) {

    if (controller.text.trim().isEmpty) {
      return;
    }


    context.read<AiChatBloc>().add(
      SendMessage(
        controller.text.trim(),
      ),
    );


    controller.clear();
  }



  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 12,
          top: 8,
        ),

        decoration: BoxDecoration(

          color: Colors.white,

          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0,-3),
            )
          ],
        ),


        child: Row(
          children: [


            Expanded(
              child: Container(

                decoration: BoxDecoration(

                  color: Colors.white,

                  borderRadius:
                  BorderRadius.circular(30),

                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),

                ),


                child: TextField(

                  controller: controller,


                  textInputAction:
                  TextInputAction.send,


                  onSubmitted: (_) {
                    sendMessage(context);
                  },


                  decoration: InputDecoration(

                    hintText:
                    "Type or speak...",


                    hintStyle:
                    TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 15,
                    ),


                    prefixIcon: Icon(
                      Icons.mic_none_rounded,
                      color: Colors.grey.shade600,
                    ),


                    border:
                    InputBorder.none,


                    contentPadding:
                    const EdgeInsets.symmetric(
                      vertical: 14,
                    ),
                  ),
                ),
              ),
            ),


            const SizedBox(width: 12),



            GestureDetector(

              onTap: () {
                sendMessage(context);
              },


              child: Container(

                height: 45,
                width: 45,


                decoration: const BoxDecoration(

                  color: Color(0xff0F6B43),

                  shape: BoxShape.circle,

                ),


                child: const Icon(

                  Icons.send_rounded,

                  color: Colors.white,

                  size: 24,

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}