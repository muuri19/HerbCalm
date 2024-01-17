import 'dart:convert';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:herbcalm/theme.dart';

class CardWidgetForum extends StatefulWidget {
  const CardWidgetForum({Key? key}) : super(key: key);

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidgetForum> {
  List _items = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/json/forum-json.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["forum"];
      print("..number of items ${_items.length}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _items.isNotEmpty
            ? Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: _items.length,
                  itemBuilder: (context, index) {
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
                                child:
                                    Image.asset('assets/images/dokter/dr2.png'),
                              ),
                              title: Text(_items[index]['nama_pasien']),
                              subtitle: Text(
                                  '${_items[index]['tanggal_kirim']} - ${_items[index]['role']}'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20, 0, 20, 0),
                              child: Container(
                                height: 125,
                                width: double.infinity,
                                child: AutoSizeText(
                                    _items[index]['text_pertanyaan'],
                                    maxLines: 5,
                                    minFontSize: 12,
                                    overflow: TextOverflow.fade,),
                              ),
                            ),
                            Divider(
                              indent: 8,
                              endIndent: 8,
                              height: 1,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20, 10, 20, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.favorite_border_outlined,
                                      ),
                                      Text(
                                          '${_items[index]['jumlah_like']} Likes'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(Icons.mode_comment_outlined),
                                      Text(
                                          '${_items[index]['jumlah_komen']} Coment')
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
                  },
                ),
              )
            : ElevatedButton(
                onPressed: () {
                  readJson();
                },
                child: Center(child: Text("Load Json")))
      ],
    );
  }
}
