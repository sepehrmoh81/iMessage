import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatAvatar extends StatelessWidget {
  const ChatAvatar({super.key, this.image});

  final ImageProvider? image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: image != null
          ? Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(shape: BoxShape.circle),
              width: 40,
              height: 40,
              child: Image(image: image!, fit: BoxFit.cover,),
            )
          : Container(
              padding: EdgeInsets.only(top: 5, bottom: 3, left: 4, right: 4),
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
              child: Container(
                width: 36,
                height: 36,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Icon(
                  CupertinoIcons.person_fill,
                  color: Colors.white,
                  size: 44,
                ),
              ),
            ),
    );
  }
}
