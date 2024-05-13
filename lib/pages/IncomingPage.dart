import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'ProgBar.dart';

class IncomingPage extends StatefulWidget {
  const IncomingPage({Key? key}) : super(key: key);

  @override
  State<IncomingPage> createState() => _IncomingPageState();
}

class _IncomingPageState extends State<IncomingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF110F18),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Входящие',
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
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05),
            child: Column(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Color(0xFF27262B)),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              '№ 20230 Новый',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF), fontSize: 20),
                            ),
                            Spacer(),
                            Text(
                              'Связь ООО',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF), fontSize: 20),
                            ),
                          ],
                        ),
                        Container(
                          height: 1,
                          color: Color(0xFFD9D9D9).withOpacity(0.2),
                        ),
                        Text(
                          'Сургут - Юганск',
                          style:
                              TextStyle(color: Color(0xFFFFFFFF), fontSize: 20),
                        ),
                        Text(
                          '1 декабря 2023',
                          style:
                              TextStyle(color: Color(0xFFFFFFFF), fontSize: 20),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            '120 000,00 Р',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF), fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: ProjectBottomNavBar(),
    );
  }
}
