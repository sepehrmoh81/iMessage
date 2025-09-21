import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imessage/models/conversation.dart';
import 'package:imessage/screens/chat_screen.dart';
import 'package:imessage/widgets/chat_avatar.dart';

import '../apple_typography.dart';

class ChatItem extends StatefulWidget {
  final Conversation conversation;

  const ChatItem(this.conversation, {super.key});

  @override
  State<ChatItem> createState() => _ChatItemState();
}

class _ChatItemState extends State<ChatItem> {
  // Gesture States
  bool wasPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (_) {
        setState(() {
          wasPressed = true;
        });
      },
      onLongPress: () => debugPrint("Bye!"),
      onTap: () =>
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => ChatScreen(widget.conversation)),
          ).then(
            (_) => setState(() {
              wasPressed = false;
            }),
          ),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 50),
        decoration: BoxDecoration(
          color: wasPressed ? Color(0xFF1F1F21) : Colors.transparent,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            start: 24,
            end: 12,
            top: 12,
            bottom: 12,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ChatAvatar(image: widget.conversation.getContact(context).image,),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            widget.conversation.getContact(context).firstName,
                            style: AppleTypography.headline,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          widget.conversation.getLastMessageTimeShort(),
                          style: AppleTypography.subhead.copyWith(
                            color:
                                CupertinoColors.inactiveGray.darkElevatedColor,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          CupertinoIcons.chevron_forward,
                          color: CupertinoColors.inactiveGray.darkElevatedColor
                              .withValues(alpha: 0.5),
                          size: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      widget.conversation.messages.last.content,
                      style: AppleTypography.subhead.copyWith(
                        color: CupertinoColors.inactiveGray.darkElevatedColor,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
