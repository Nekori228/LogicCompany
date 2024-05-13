import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ProgBar.dart';

class DeliveredPage extends StatefulWidget {
  const DeliveredPage({Key? key}) : super(key: key);

  @override
  State<DeliveredPage> createState() => _DeliveredPageState();
}

class _DeliveredPageState extends State<DeliveredPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF110F18),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Доставлены',
          style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 26,
              fontWeight: FontWeight.w700),
        ),
        backgroundColor: Color(0xFF170F38),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
        ),
      ),
      bottomNavigationBar: ProjectBottomNavBar(),
    );
  }
}
