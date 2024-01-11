import 'package:flutter/material.dart';

class HelpContact extends StatefulWidget {
  const HelpContact({Key? key}) : super(key: key);

  @override
  _HelpContactState createState() => _HelpContactState();
}

class _HelpContactState extends State<HelpContact> {
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
                child: Text('Help', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              )
            ),
          ),
          Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Colors.grey.withOpacity(0.5), width: 1))),
              child: ListTile(
                title: Text('Contact Helpdesk'),
                leading: Icon(Icons.help_center),
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
                title: Text('Term of Condition'),
                leading: Icon(Icons.content_paste),
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
                title: Text('Give Feedback'),
                leading: Icon(Icons.feedback),
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
                title: Text('Change Password'),
                leading: Icon(Icons.lock),
                trailing: Icon(Icons.chevron_right),
              )),
        ],
      ),
    );
  }
}
