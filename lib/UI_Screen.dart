import 'package:flutter/material.dart';

class UiScreen extends StatelessWidget {
  String text ;
  UiScreen({Key? key,required this.text, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.white,width: 0.1),
        color: Colors.black,
      ),
      child: Center(child: Text(text,style: TextStyle(color: Colors.white,fontSize: 25),),),
    );
  }
}
