import 'package:flutter/material.dart';
import 'package:herbcalm/theme.dart';

class FitofarmakaGrid extends StatefulWidget {
  const FitofarmakaGrid({ Key? key }) : super(key: key);

  @override
  _FitofarmakaGridState createState() => _FitofarmakaGridState();
}

class _FitofarmakaGridState extends State<FitofarmakaGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(10, (index) {
        return Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
          child: Container(
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Color(0x34090F13),
                  offset: Offset(0, 2),
                )
              ],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('assets/images/obatJamu/lancarhaid.png',), fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                ),
                Container(
                  
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Lancar Haid', style: textBoldBlack.copyWith(fontSize: 16),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Jamu Tradisional'),
                            Icon(Icons.arrow_forward, size: 16,)
                          ],
                        )
                      ],
                    ),
                  )
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}