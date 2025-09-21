import 'package:flutter/foundation.dart';
import 'package:imessage/models/conversation.dart';

import '../models/message.dart';

class ChatProvider extends ChangeNotifier {
  final List<Conversation> _conversations = [];

  ChatProvider(){
    _populateData();
  }

  void _populateData() {
    final Conversation c1 = Conversation(
      id: 1,
      contactIds: [1],
      messages: [
        Message(
          id: 1,
          conversationId: 1,
          senderId: 1,
          timestamp: DateTime(2025, 9, 21, 10, 40, 0),
          content: 'Salam',
        ),
        Message(
          id: 2,
          conversationId: 1,
          senderId: 1,
          timestamp: DateTime(2025, 9, 21, 10, 40, 5),
          content: 'Chetori?',
        ),
      ],
    );
    final Conversation c2 = Conversation(
      id: 2,
      contactIds: [2],
      messages: [
        Message(
          id: 3,
          conversationId: 2,
          senderId: 2,
          timestamp: DateTime(2025, 9, 21, 10, 35, 0),
          content: 'Salam',
        ),
        Message(
          id: 4,
          conversationId: 2,
          senderId: 2,
          timestamp: DateTime(2025, 9, 21, 10, 35, 10),
          content: 'Bashe',
        ),
      ],
    );
    final Conversation c3 = Conversation(
      id: 3,
      contactIds: [3],
      messages: [
        Message(
          id: 5,
          conversationId: 3,
          senderId: 3,
          timestamp: DateTime(2025, 9, 20, 10, 35, 0),
          content: 'Salam',
        ),
        Message(
          id: 6,
          conversationId: 3,
          senderId: 3,
          timestamp: DateTime(2025, 9, 20, 10, 35, 10),
          content: 'Bashe',
        ),
      ],
    );
    final Conversation c4 = Conversation(
      id: 4,
      contactIds: [4],
      messages: [
        Message(
          id: 7,
          conversationId: 4,
          senderId: 4,
          timestamp: DateTime(2025, 9, 20, 10, 35, 0),
          content: 'Salam',
        ),
        Message(
          id: 8,
          conversationId: 4,
          senderId: 4,
          timestamp: DateTime(2025, 9, 20, 10, 35, 10),
          content: 'Bashe',
        ),
      ],
    );
    final Conversation c5 = Conversation(
      id: 5,
      contactIds: [5],
      messages: [
        Message(
          id: 9,
          conversationId: 5,
          senderId: 5,
          timestamp: DateTime(2025, 9, 20, 10, 35, 0),
          content: 'Salam',
        ),
        Message(
          id: 10,
          conversationId: 5,
          senderId: 5,
          timestamp: DateTime(2025, 9, 20, 10, 35, 10),
          content: 'Bashe',
        ),
      ],
    );
    final Conversation c6 = Conversation(
      id: 6,
      contactIds: [6],
      messages: [
        Message(
          id: 11,
          conversationId: 6,
          senderId: 6,
          timestamp: DateTime(2025, 9, 20, 10, 35, 0),
          content: 'Salam',
        ),
        Message(
          id: 12,
          conversationId: 6,
          senderId: 6,
          timestamp: DateTime(2025, 9, 20, 10, 35, 10),
          content: 'Bashe',
        ),
      ],
    );
    final Conversation c7 = Conversation(
      id: 7,
      contactIds: [7],
      messages: [
        Message(
          id: 13,
          conversationId: 7,
          senderId: 7,
          timestamp: DateTime(2025, 9, 20, 10, 35, 0),
          content: 'Salam',
        ),
        Message(
          id: 14,
          conversationId: 7,
          senderId: 7,
          timestamp: DateTime(2025, 9, 20, 10, 35, 10),
          content: 'Bashe',
        ),
      ],
    );
    final Conversation c8 = Conversation(
      id: 8,
      contactIds: [8],
      messages: [
        Message(
          id: 15,
          conversationId: 8,
          senderId: 8,
          timestamp: DateTime(2025, 9, 20, 10, 35, 0),
          content: 'Salam',
        ),
        Message(
          id: 16,
          conversationId: 8,
          senderId: 8,
          timestamp: DateTime(2025, 9, 20, 10, 35, 10),
          content: 'Bashe',
        ),
      ],
    );
    final Conversation c9 = Conversation(
      id: 9,
      contactIds: [9],
      messages: [
        Message(
          id: 17,
          conversationId: 9,
          senderId: 9,
          timestamp: DateTime(2025, 9, 20, 10, 35, 0),
          content: 'Salam',
        ),
        Message(
          id: 18,
          conversationId: 9,
          senderId: 9,
          timestamp: DateTime(2025, 9, 20, 10, 35, 10),
          content: 'Bashe',
        ),
      ],
    );

    addConversations([c1,c2,c3,c4,c5,c6,c7,c8,c9]);
  }

  List<Conversation> getConversations() {
    return _conversations.where((conv) => conv.messages.isNotEmpty).toList()
      ..sort((a, b) => b.lastMessageTime!.compareTo(a.lastMessageTime!));
  }

  void addConversation(Conversation c) {
    _conversations.add(c);
    notifyListeners();
  }

  void addConversations(List<Conversation> c) {
    _conversations.addAll(c);
    notifyListeners();
  }

  void deleteConversationById(int id) {
    _conversations.removeWhere((conv) => conv.id == id);
    notifyListeners();
  }

  void deleteConversation(Conversation c) {
    _conversations.remove(c);
    notifyListeners();
  }
}
