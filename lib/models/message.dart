class Message {
  final int id;
  final int conversationId;
  final int senderId;
  String content;
  final DateTime timestamp;
  DateTime? readDate;

  Message({
    required this.id,
    required this.conversationId,
    required this.senderId,
    this.content = "",
    required this.timestamp,
    this.readDate,
  });
}
