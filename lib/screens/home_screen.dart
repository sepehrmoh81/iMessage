import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sficon/flutter_sficon.dart';
import 'package:imessage/models/conversation.dart';
import 'package:imessage/providers/chat_provider.dart';
import 'package:imessage/widgets/chat_item.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar.search(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 4),
            leading: CupertinoNavigationBarBackButton(
              onPressed: () {},
              previousPageTitle: "Filters",
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CupertinoButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: SFIcon(SFIcons.sf_ellipsis_circle, fontSize: 22),
                ),
                CupertinoButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  child: SFIcon(SFIcons.sf_square_and_pencil, fontSize: 22),
                ),
              ],
            ),
            largeTitle: Text("Messages"),
            searchField: CupertinoSearchTextField(
              placeholder: "Search",
              suffixIcon: Icon(CupertinoIcons.mic_fill),
              suffixMode: OverlayVisibilityMode.always,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 8,),
          ),
          Consumer<ChatProvider>(
            builder: (context, provider, child) {
              List<Conversation> conversations = provider.getConversations();
              return SliverList.separated(
                itemBuilder: (context, index) {
                  if (index == 0 || index == conversations.length + 1) {
                    return const SizedBox.shrink();
                  }
                  return ChatItem(conversations[index - 1]);
                },
                itemCount: conversations.length + 2,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    indent: 82,
                    thickness: 0.2,
                    height: 0.4,
                    radius: BorderRadius.circular(1),
                    color: CupertinoColors.inactiveGray.darkElevatedColor,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
