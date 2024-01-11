import 'package:flutter/material.dart';

class ButtonLogout extends StatelessWidget {
const ButtonLogout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 75,
      
      child: Center(
        child: Text('Logout', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),),
      ),
    );
  }
}