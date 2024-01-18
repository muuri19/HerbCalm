import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:herbcalm/app/modules/home/views/artikel_deskripsi_view.dart';
import 'package:herbcalm/theme.dart';

class ArtikelObatherbal extends StatefulWidget {
  const ArtikelObatherbal({Key? key}) : super(key: key);

  @override
  _ArtikelObatherbalState createState() => _ArtikelObatherbalState();
}

class _ArtikelObatherbalState extends State<ArtikelObatherbal> {
  final dataArtikelObatHerbal =
      FirebaseDatabase.instance.ref('HerbcalmDB/herbalMedicine');
  @override
  Widget build(BuildContext context) {
    return FirebaseAnimatedList(
        scrollDirection: Axis.horizontal,
        query: dataArtikelObatHerbal,
        itemBuilder: (context, snapshot, animation, index) {
          return InkWell(
            onTap: () {
              Get.to(ArtikelDeskripsiView());
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/artikelImage/image1.png'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 0.0, height: 10),
                  Container(
                    width: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          snapshot.child('title').value.toString(),
                          style: textBoldBlack.copyWith(fontSize: 14),
                          maxLines: 2,
                          minFontSize: 14,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Sarah Oktaviani Alam'),
                            Icon(
                              Icons.arrow_forward,
                              size: 20,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
