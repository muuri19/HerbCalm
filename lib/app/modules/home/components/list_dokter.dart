import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:herbcalm/theme.dart';

class ListDokter extends StatefulWidget {
  const ListDokter({Key? key}) : super(key: key);

  @override
  _ListDokterState createState() => _ListDokterState();
}

class _ListDokterState extends State<ListDokter> {
  final dataDoctor = FirebaseDatabase.instance.ref('HerbcalmDB/Doctor');
  @override
  Widget build(BuildContext context) {
    return FirebaseAnimatedList(
        query: dataDoctor,
        itemBuilder: (context, snapshot, animation, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.white,
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: greenColor.withAlpha(30),
                onTap: () {
                  print('Card diklik!');
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
                        child: Image.asset(
                          'assets/images/dokter/user.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          snapshot.child('name').value.toString(),
                          style: textBoldBlack.copyWith(fontSize: 14),
                        ),
                        Text(
                          snapshot.child('address').value.toString(),
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.fiber_manual_record,
                              color: snapshot.child('status').value == 'online'? Colors.green : Colors.grey,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(snapshot.child('status').value.toString(),)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
