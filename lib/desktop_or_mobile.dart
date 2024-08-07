import 'package:flutter/material.dart';

class DesktopOrMobile extends StatefulWidget {
  const DesktopOrMobile({super.key});

  @override
  State<DesktopOrMobile> createState() => _DesktopOrMobileState();
}

class _DesktopOrMobileState extends State<DesktopOrMobile> {
  bool isDeskTop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;

  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:isDeskTop(context) == true ? Colors.yellow :Colors.orange,
        centerTitle: true,
        title: Text(isDeskTop(context) == true ? "isDeskTop" : "isMobile"),
      ),
      body: Row(children: [
        isDeskTop(context) == true ?
        Expanded(
          child: Container(
            color: Colors.blue,
            child: Center(
              child: Text("Desktop"),
            ),
          ),
        ):
        Expanded(
          child: Container(
            color: Colors.red,
            child: Center(
              child: Text("mobile"),
            ),
          ),
        ),

      ],),
    );
  }
}
