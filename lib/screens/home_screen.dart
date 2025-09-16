import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sficon/flutter_sficon.dart';
import 'package:imessage/apple_typography.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            searchField: CupertinoSearchTextField(placeholder: "Search"),
          ),
          SliverList.separated(
            itemBuilder: (context, index) {
              return _chatItem(
                _contacts[index],
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut nec augue nunc. Nulla sagittis placerat felis ac venenatis. In lectus mi, sodales vitae tristique a, ultrices nec sem. Integer interdum arcu vitae ex faucibus feugiat.',
              );
            },
            itemCount: 13,
            separatorBuilder: (BuildContext context, int index) {
              return Divider(indent: 80, thickness: 0.4, radius: BorderRadius.circular(1), color: Colors.grey,);
            },
          ),
        ],
      ),
    );
  }

  final List<String> _contacts = const [
    'Yasmin',
    'Eilia',
    'Maede',
    'Aliz',
    'Mom',
    'Dad',
    '+98 1009000900700'
    'danielfarajio1999@gmail.com',
    '+98 9000 0451',
    '+98 5000 333',
    'HamraheMan',
    'GYROFOOD',
    'DIGIPAY',
    'JABAMA'
  ];

  Widget _chatItem(String title, String message) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 24, end: 12, top: 4, bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _avatar(),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children: [
                    Expanded(child: Text(title, style: AppleTypography.headline, maxLines: 1, overflow: TextOverflow.ellipsis,)),
                    SizedBox(width: 8,),
                    Text('03:03', style: AppleTypography.subhead.copyWith(color: CupertinoColors.inactiveGray),),
                    SizedBox(width: 8,),
                    Icon(CupertinoIcons.chevron_forward, color: CupertinoColors.inactiveGray.withValues(alpha: 0.6), size: 15, fontWeight: FontWeight.w900,),
                  ],
                ),
                SizedBox(height: 4),
                Text(
                  message,
                  style: AppleTypography.subhead.copyWith(color: CupertinoColors.inactiveGray),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _avatar() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Container(
        padding: EdgeInsets.only(top: 4.5, bottom: 3.5, left: 4, right: 4),
        decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
        child: Container(
          width: 32,
          height: 32,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(shape: BoxShape.circle),
          child: Icon(
            CupertinoIcons.person_fill,
            color: Colors.white,
            size: 36,
          ),
        ),
      ),
    );
  }
}
