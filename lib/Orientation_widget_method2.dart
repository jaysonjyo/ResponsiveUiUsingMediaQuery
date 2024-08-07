import 'package:flutter/material.dart';

class OrientationWidgetMethod2 extends StatefulWidget {
  const OrientationWidgetMethod2({super.key});

  @override
  State<OrientationWidgetMethod2> createState() => _OrientationWidgetMethod2State();
}

class _OrientationWidgetMethod2State extends State<OrientationWidgetMethod2> {
  @override
  Widget build(BuildContext context) {


    return OrientationBuilder(builder: (BuildContext context, Orientation orientation) {
      final isPotrait= orientation==Orientation.portrait;
      final isMobile =MediaQuery.of(context).size.shortestSide<600;
      return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: GridView.count(
            crossAxisCount: isPotrait ?2:3,
                children: List.generate(40, (index)=>Card(color: Colors.orange,
      child: Center(
      child: Text('Item $index'),)),
        ),

      ));
    }
    );
    }

  }

