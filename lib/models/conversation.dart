import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../providers/contact_provider.dart';
import 'contact.dart';
import 'message.dart';

class Conversation {
  final int id;
  final List<int> contactIds;
  final List<Message> messages;
  DateTime? lastMessageTime;
  int unreadCount;

  Conversation({
    required this.id,
    this.contactIds = const [],
    this.messages = const [],
    this.unreadCount = 0,
  }) {
    lastMessageTime = messages.firstOrNull?.timestamp;
  }

  Contact getContact(BuildContext context) {
    return context.read<ContactProvider>().getContacts().firstWhere(
      (contact) => contact.id == id,
    );
  }

  String getLastMessageTimeShort() {
    final now = DateTime.now();

    if (lastMessageTime == null) {
      return "";
    } else if (now.difference(lastMessageTime!).inDays == 0 &&
        now.day == lastMessageTime!.day) {
      return DateFormat.Hm().format(lastMessageTime!);
    } else if ((now.difference(lastMessageTime!).inDays == 1 &&
            lastMessageTime!.day == now.day - 1) ||
        (now.difference(lastMessageTime!).inDays == 0 &&
            now.day != lastMessageTime!.day)) {
      return "Yesterday";
    } else if (now.difference(lastMessageTime!).inDays < 6) {
      return DateFormat.EEEE().format(lastMessageTime!);
    }
    return DateFormat("M/d/yy").format(lastMessageTime!);
  }
}
