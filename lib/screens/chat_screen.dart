import 'package:flutter/cupertino.dart';
import 'package:imessage/models/conversation.dart';
import 'package:imessage/widgets/chat_avatar.dart';
import 'package:imessage/widgets/nav_bar.dart'
    show CustomCupertinoSliverNavigationBar;
import 'package:smooth_corner/smooth_corner.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen(this.conversation, {super.key});

  final Conversation conversation;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CustomCupertinoSliverNavigationBar(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 4),
            leading: CupertinoNavigationBarBackButton(
              onPressed: () => Navigator.pop(context),
            ),
            middle: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ChatAvatar(
                    image: widget.conversation.getContact(context).image,
                  ),
                  Text(widget.conversation.getContact(context).firstName),
                ],
              ),
            ),
            largeTitle: SizedBox.shrink(),
            heightExtension: 56,
            automaticBackgroundVisibility: false,
          ),
          SliverList.builder(
            itemBuilder: (context, index) {
              return FractionallySizedBox(
                widthFactor: 0.5,
                alignment: AlignmentGeometry.centerLeft,
                child: Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SmoothContainer(
                        smoothness: 0.6,
                        borderRadius: BorderRadius.circular(16),
                        color: CupertinoColors.activeBlue.darkColor,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            widget.conversation.messages[index].content,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: widget.conversation.messages.length,
          ),
        ],
      ),
    );
  }
}
