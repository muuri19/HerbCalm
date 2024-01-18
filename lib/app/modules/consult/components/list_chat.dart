
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herbcalm/app/modules/consult/views/chat_view.dart';
import 'package:herbcalm/theme.dart';

class ListChat extends StatefulWidget {
  const ListChat({ Key? key }) : super(key: key);

  @override
  _ListChatState createState() => _ListChatState();
}

class _ListChatState extends State<ListChat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (BuildContext, int i) {
          return InkWell(
            onTap: () => Get.to(()=>ChatViewFitur()),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                  leading: CircleAvatar(
                    child: Image.network('https://firebasestorage.googleapis.com/v0/b/herbcalm-9227b.appspot.com/o/Doctor_img%2Fdrf1.png?alt=media&token=da1d9bef-959d-4da8-a30d-b27a4e8ce0ef'),
                  ),
                  trailing: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: greenColor,
                    ),
                    child: Center(
                      child: Text(
                        '3',
                        style: textBoldWhite,
                      ),
                    ),
                  ),
                  title: Text('dr.Isabelle'),
                  subtitle: Text('Apakah anda sudah membaik?'),
                ),
            ),
          );
        });
  }
}