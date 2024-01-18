import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herbcalm/theme.dart';

class ListResepObat extends StatefulWidget {
  const ListResepObat({Key? key}) : super(key: key);

  @override
  _ListResepObatState createState() => _ListResepObatState();
}

class _ListResepObatState extends State<ListResepObat> {
  final dataResepObat = FirebaseDatabase.instance.ref('HerbcalmDB/MenuResepObat');
  @override
  Widget build(BuildContext context) {
    return FirebaseAnimatedList(
      
        query: dataResepObat,
        itemBuilder: (context, snapshot, animation, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.white,
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: greenColor.withAlpha(30),
                onTap: () {
                  Get.snackbar('From : Team Development',
                      'Mohon maaf untuk fitur ini masih dalam pengembangan');
                },
                child: Row(

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Image.network(
                          snapshot.child('imgurl').value.toString(),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            snapshot.child('title').value.toString(),
                            style: textBoldBlack.copyWith(fontSize: 14),
                            maxLines: 2,
                          ),
                          Text(
                            snapshot.child('categoryMedicine').value.toString(),
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
