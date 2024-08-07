import 'package:flutter/material.dart';

//scrolscreen





class OrientationMethod1 extends StatefulWidget {
  const OrientationMethod1({super.key});

  @override
  State<OrientationMethod1> createState() => _OrientationMethod1State();
}

class _OrientationMethod1State extends State<OrientationMethod1> {

  @override
  Widget build(BuildContext context) {
    bool scrollscreen= MediaQuery.of(context).orientation== Orientation.portrait;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:scrollscreen ? Colors.orange:Colors.red,
        centerTitle: true,
        title: Text("orientaton"),
      ),

      body: scrollscreen ?
      Container(
        color: Colors.blue,
        child: Center(
          child: Text("Portrait"),
        ),
      ):Container(
        color: Colors.green,
        child: Center(
          child: Text("Portrait"),
        ),
      )


    );

  }
}
