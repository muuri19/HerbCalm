import 'package:flutter/material.dart';
import 'package:herbcalm/theme.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              child: Image.asset('assets/images/dokter/dr2.png'),
            ),
            title: Text('Aliandra Sekarningrum'),
            subtitle: Text('12 Oktober 2023'),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
            child: Container(
              height: 125,
              width: double.infinity,
              child: Text(
                  '🌿✨Aku ingin berbicara tentang keajaiban herbal dalam mendukung kesehatan dan keseimbangan hidup! 🌱💚 Selama beberapa bulan terakhir, aku telah menggabungkan beberapa herba alami ke dalam rutinitas keseharianku, dan hasilnya luar biasa! 🍵✨'),
            ),
          ),
          Divider(
            indent: 8,
            endIndent: 8,
            height: 1,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border_outlined,
                    ),
                    Text('12k Likes'),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.mode_comment_outlined),
                    Text('1,5k Coment')
                  ],
                ),
                Icon(Icons.more_horiz),
              ],
            ),
          )
        ],
      ),
    );
  }
}
