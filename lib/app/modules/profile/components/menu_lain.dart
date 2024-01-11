import 'package:flutter/material.dart';

class MenuLain extends StatefulWidget {
  const MenuLain({Key? key}) : super(key: key);

  @override
  _MenuLainState createState() => _MenuLainState();
}

class _MenuLainState extends State<MenuLain> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
      child: Column(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Container(
                child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 30, 10, 00),
              child: Text(
                'Data Konsultasi',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            )),
          ),
          Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Colors.grey.withOpacity(0.5), width: 1))),
              child: ListTile(
                title: Text('Riwayat Konsultasi'),
                leading: Icon(Icons.description),
                trailing: Icon(Icons.chevron_right),
              )),
          Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Colors.grey.withOpacity(0.5), width: 1))),
              child: ListTile(
                title: Text('Hasil Hipotesis'),
                leading: Icon(Icons.checklist),
                trailing: Icon(Icons.chevron_right),
              )),
        ],
      ),
    );
  }
}
