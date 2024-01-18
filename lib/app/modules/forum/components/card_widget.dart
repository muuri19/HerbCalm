import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:herbcalm/theme.dart';

class CardWidgetForum extends StatefulWidget {
  const CardWidgetForum({Key? key}) : super(key: key);

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidgetForum> {
  final dataForum = FirebaseDatabase.instance.ref('HerbcalmDB/forum');

  @override
  Widget build(BuildContext context) {
    return FirebaseAnimatedList(
        query: dataForum,
        itemBuilder: (context, snapshot, animation, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: greysColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      child: Image.network(
                          snapshot.child('imgurl').value.toString()),
                    ),
                    title: Text(snapshot.child('nama_pasien').value.toString()),
                    subtitle: Text(snapshot.child('tanggal_kirim').value.toString()),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: Container(
                      height: 125,
                      width: double.infinity,
                      child: AutoSizeText(
                        snapshot.child('text_pertanyaan').value.toString(),
                        maxLines: 5,
                        minFontSize: 12,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                  Divider(
                    indent: 8,
                    endIndent: 8,
                    height: 1,
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.favorite_border_outlined,
                            ),
                            Text(
                                snapshot.child('jumlah_like').value.toString()),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(Icons.mode_comment_outlined),
                            Text(
                                snapshot.child('jumlah_komen').value.toString())
                          ],
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
