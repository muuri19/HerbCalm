import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:herbcalm/theme.dart';

class ArtikelKesehatan extends StatefulWidget {
  const ArtikelKesehatan({Key? key}) : super(key: key);

  @override
  _ArtikelKesehatanState createState() => _ArtikelKesehatanState();
}

class _ArtikelKesehatanState extends State<ArtikelKesehatan> {
  final dataArtikelKesehatan =
      FirebaseDatabase.instance.ref('HerbcalmDB/articleHealty');

  @override
  Widget build(BuildContext context) {
    return FirebaseAnimatedList(
      scrollDirection: Axis.horizontal,
      query: dataArtikelKesehatan,
      itemBuilder: (context, snapshot, animation, index) {
        // Menggunakan tag unik untuk setiap Hero
        String heroTag = 'bannerArtikelKesehatan_$index';

        return InkWell(
          onTap: () => _gotoDetailsPage(context, heroTag),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: heroTag, // Menggunakan tag unik di sini
                  child: Container(
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image:
                            NetworkImage(snapshot.child('imgurl').value.toString()),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 0.0, height: 10),
                Container(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        snapshot.child('title').value.toString(),
                        style:
                            TextStyle(fontSize: 14), // Ganti sesuai kebutuhan
                        maxLines: 2,
                        minFontSize: 14,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(snapshot.child('author').value.toString(), 
                          style: textRegularGrey.copyWith(fontSize: 12),),
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
      },
    );
  }

  void _gotoDetailsPage(BuildContext context, String heroTag) {
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => ArtikelDeskripsiView(
        heroTag: heroTag, // Melewatkan tag unik ke widget tujuan
      ),
    ));
  }
}

class ArtikelDeskripsiView extends StatelessWidget {
  final String heroTag;

   ArtikelDeskripsiView({required this.heroTag, Key? key})
      : super(key: key);
final dataArtikelKesehatan =
      FirebaseDatabase.instance.ref('HerbcalmDB/articleHealty');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Artikel'),
      ),
      body: Column(
        children: [
          Hero(
            tag: heroTag, // Menggunakan tag yang sama seperti di widget sumber
            child: Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage('assets/images/artikelImage/image1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
              child: Column(
                children: [
                  Text('7 Cara Mengelola Stres Dengan Obat Herbal'),
                  Text('Penting untuk dicatat bahwa sebelum memulai penggunaan obat herbal atau suplemen, sebaiknya Anda berkonsultasi dengan profesional kesehatan terlebih dahulu. Meskipun beberapa obat herbal dapat membantu mengelola stres, efektivitas dan keamanannya bisa bervariasi dari individu ke individu. Berikut adalah beberapa obat herbal yang umumnya dianggap dapat membantu mengelola stres:')
                ],
              ),
            )
        ],
      ),
    );
  }
}
