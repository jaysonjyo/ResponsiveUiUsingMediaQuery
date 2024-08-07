import 'package:flutter/material.dart';

class Widthorheight extends StatefulWidget {
  const Widthorheight({super.key});

  @override
  State<Widthorheight> createState() => _WidthorheightState();
}

class _WidthorheightState extends State<Widthorheight> {
  @override
  Widget build(BuildContext context) {
    double screenwidth =MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
body: Column(crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Container(width: screenwidth*0.4,height: screenheight,color: Colors.red,),

  ],
),
    );
  }
}
