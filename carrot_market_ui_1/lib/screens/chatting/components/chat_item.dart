import 'package:carrot_market_ui_1/theme.dart';
import 'package:file/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

class ChatItem extends StatelessWidget {
  const ChatItem(
      {Key? key,
      required this.imgUrl,
      required this.name,
      required this.content,
      required this.address,
      required this.date,
      this.imageUrl2})
      : super(key: key);

  final String imgUrl;
  final String name;
  final String content;
  final String address;
  final String date;
  final String? imageUrl2;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(imgUrl, fit: BoxFit.cover),
                ),
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: textTheme().headline3,
                      ),
                      SizedBox(width: 8),
                      Text(address + " • " + date),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(content, style: textTheme().headline3),
                ],
              ),
              if (imageUrl2 != null) _buildChatItemContent(imageUrl2!),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildChatItemContent(String url) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image.network(
      url,
      width: 50,
      height: 50,
      fit: BoxFit.cover,
    ),
  );
}
