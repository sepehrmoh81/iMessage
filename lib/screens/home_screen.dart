import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar.search(
            leading: CupertinoNavigationBarBackButton(onPressed: () {

            },previousPageTitle: "Filters",),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.ellipsis_circle),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.square_pencil),
                ),
              ],
            ),
            largeTitle: Text("Messages"),
            searchField: CupertinoSearchTextField(placeholder: "Search"),
          ),
          SliverList.separated(
            itemBuilder: (context, index) {
              return CupertinoListTile(title: Text("Item $index"));
            },
            itemCount: 5,
            separatorBuilder: (BuildContext context, int index) {
              return Divider();
            },
          ),
        ],
      ),
    );
  }
}
