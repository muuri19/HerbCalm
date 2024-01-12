import 'package:flutter/material.dart';
import 'package:herbcalm/theme.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({ Key? key }) : super(key: key);

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
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                        child: CircleAvatar(
                          backgroundColor: greenColor,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 0.0, height: 130),
                      Divider(
                        indent: 8,
                        endIndent: 8,
                        height: 1,
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                Text('12k'),
                                SizedBox(
                                  width: 20,
                                ),
                                 Icon(Icons.mode_comment_outlined),
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