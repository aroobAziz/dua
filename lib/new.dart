import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: Center(child: Text("WELCOME TO CHAMMAN",style: TextStyle(
        decoration: TextDecoration.none,color: Colors.white
      ),),),
    );
  }
}
