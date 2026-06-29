import 'package:equatable/equatable.dart';

import '../../../core/Models/chat_message.dart';


class AiChatState extends Equatable {
  final List<ChatMessage> messages;
  final bool isTyping;

  const AiChatState({
    this.messages = const [],
    this.isTyping = false,
  });

  AiChatState copyWith({
    List<ChatMessage>? messages,
    bool? isTyping,
  }) {
    return AiChatState(
      messages: messages ?? this.messages,
      isTyping: isTyping ?? this.isTyping,
    );
  }

  @override
  List<Object?> get props => [
    messages,
    isTyping,
  ];
}