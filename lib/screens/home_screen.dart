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
            padding: EdgeInsetsDirectional.symmetric(horizontal: 4),
            leading: CupertinoNavigationBarBackButton(onPressed: () {

            },previousPageTitle: "Filters",),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CupertinoButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Icon(CupertinoIcons.ellipsis_circle, size: 26,),
                ),
                CupertinoButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  child: Icon(CupertinoIcons.square_pencil, size: 26,),
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
