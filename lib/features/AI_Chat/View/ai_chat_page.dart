import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/theme/app_colors.dart';
import '../../../core/constants/theme/app_text_styles.dart';
import '../Bloc/ai_chat_bloc.dart';
import '../Bloc/ai_chat_state.dart';
import 'Widgets/assistant_header.dart';
import 'Widgets/chat_input.dart';
import 'Widgets/message_bubble.dart';

class AiChatPage extends StatelessWidget {
  const AiChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AiChatBloc(),
      child: const _AiChatView(),
    );
  }
}

class _AiChatView extends StatefulWidget {

  const _AiChatView({super.key});


  @override
  State<_AiChatView> createState() => _AiChatViewState();


}



class _AiChatViewState extends State<_AiChatView> {


  final ScrollController scrollController = ScrollController();


  void scrollToBottom(){

    Future.delayed(
        const Duration(milliseconds: 300),
            (){

          if(scrollController.hasClients){

            scrollController.animateTo(

              scrollController.position.maxScrollExtent,

              duration: const Duration(milliseconds:300),

              curve: Curves.easeOut,

            );

          }

        });

  }

  @override
  void dispose(){

    scrollController.dispose();

    super.dispose();

  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.white,

      appBar: AppBar(
        toolbarHeight: 40,
        backgroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,

        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.black,
            size: 20,
          ),
        ),

        title:  Text(
          "Qurbani AI Assistant",
          style: AppTextStyles.title.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: AppColors.black,
          ),
        ),
      ),

      body: SafeArea(
        child: Column(
          children: [
            const AssistantHeader(),

            // Divider(
            //   height: 1,
            //   color: Colors.grey.shade300,
            // ),

            Expanded(
              child: BlocBuilder<AiChatBloc, AiChatState>(
                builder: (context, state) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {

                    scrollToBottom();

                  });
                  return ListView.builder(
                    controller: scrollController,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 20,
                    ),
                    itemCount: state.messages.length +
                        (state.isTyping ? 1 : 0),
                    itemBuilder: (_, index) {
                      if(index == state.messages.length){

                        return const Padding(

                          padding: EdgeInsets.all(10),

                          child: Text(

                            "Assistant is typing...",

                            style: TextStyle(

                              color: AppColors.grey,

                              fontSize:13,

                            ),

                          ),

                        );

                      }

                      return MessageBubble(
                        message: state.messages[index],

                      );

                    },
                  );
                },
              ),
            ),

            const ChatInput(),
          ],
        ),
      ),
    );
  }
}




















