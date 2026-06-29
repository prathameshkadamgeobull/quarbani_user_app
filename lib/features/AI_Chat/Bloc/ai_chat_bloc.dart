import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/Models/chat_message.dart';
import 'ai_chat_event.dart';
import 'ai_chat_state.dart';



class AiChatBloc extends Bloc<AiChatEvent, AiChatState> {
  AiChatBloc()
      : super(
    const AiChatState(
      messages: [
        ChatMessage(
          message:
          "Assalamu Alaikum!\nI am your Qurbani Assistant.\nHow can I help you today?",
          isUser: false,
        ),
      ],
    ),
  ) {
    on<SendMessage>(_onSendMessage);
  }

  Future<void> _onSendMessage(
      SendMessage event,
      Emitter<AiChatState> emit,
      ) async {
    final messages = List<ChatMessage>.from(state.messages);

    messages.add(
      ChatMessage(
        message: event.message,
        isUser: true,
      ),
    );

    emit(
      state.copyWith(
        messages: messages,
        isTyping: true,
      ),
    );

    await Future.delayed(
      const Duration(seconds: 1),
    );


// First assistant message

    messages.add(
      const ChatMessage(
        message:
        "Alhamdulillah!\nI will help you with that.\nLet's get started.",
        isUser: false,
      ),
    );


    emit(
      state.copyWith(
        messages: List<ChatMessage>.from(messages),
        isTyping: false,
      ),
    );



    await Future.delayed(
      const Duration(seconds: 2),
    );


// Second assistant message

    messages.add(
      const ChatMessage(
        message:
        "Please choose the type of animal you want to offer.",
        isUser: false,
      ),
    );


    emit(
      state.copyWith(
        messages: List<ChatMessage>.from(messages),
        isTyping:false,
      ),
    );
  }
}