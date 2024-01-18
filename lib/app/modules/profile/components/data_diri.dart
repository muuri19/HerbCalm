import 'package:flutter/material.dart';

class DataDiri extends StatefulWidget {
  const DataDiri({Key? key}) : super(key: key);

  @override
  _DataDiriState createState() => _DataDiriState();
}

class _DataDiriState extends State<DataDiri> {
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
                padding: const EdgeInsetsDirectional.fromSTEB(10, 20, 10, 00),
                child: Text('Data Diri', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              )
            ),
          ),
          Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(
                          color: Colors.grey.withOpacity(0.5), width: 1))),
              child: ListTile(
                title: Text('Nama Lengkap'),
                titleTextStyle: TextStyle(color: Color(0xffB6BBC4)),
                subtitle: Text('Muuri Senpai'),
                subtitleTextStyle: TextStyle(color: Colors.black),
              )),
          Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(
                          color: Colors.grey.withOpacity(0.5), width: 1))),
              child: ListTile(
                title: Text('Jenis Kelamin'),
                titleTextStyle: TextStyle(color: Color(0xffB6BBC4)),
                subtitle: Text('Pria'),
                subtitleTextStyle: TextStyle(color: Colors.black),
              )),
          Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(
                          color: Colors.grey.withOpacity(0.5), width: 1))),
              child: ListTile(
                title: Text('Tanggal Lahir'),
                titleTextStyle: TextStyle(color: Color(0xffB6BBC4)),
                subtitle: Text('22 Desember 2022'),
                subtitleTextStyle: TextStyle(color: Colors.black),
              )),
          Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(
                          color: Colors.grey.withOpacity(0.5), width: 1))),
              child: ListTile(
                title: Text('Telepon'),
                titleTextStyle: TextStyle(color: Color(0xffB6BBC4)),
                subtitle: Text('8232723343445'),
                subtitleTextStyle: TextStyle(color: Colors.black),
              )),
          Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(
                          color: Colors.grey.withOpacity(0.5), width: 1))),
              child: ListTile(
                title: Text('Email'),
                titleTextStyle: TextStyle(color: Color(0xffB6BBC4)),
                subtitle: Text('muuri@gmail.com'),
                subtitleTextStyle: TextStyle(color: Colors.black),
              )),
        ],
      ),
    );
  }
}
