import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'StatusDeliver/AccessPage.dart';
import 'StatusDeliver/DeletePage.dart';
import 'StatusDeliver/DeliverStat.dart';
import 'ProgBar.dart';

class AcceptedPage extends StatefulWidget {
  const AcceptedPage({Key? key}) : super(key: key);

  @override
  State<AcceptedPage> createState() => _AcceptedPageState();
}

class _AcceptedPageState extends State<AcceptedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF110F18),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Принятые',
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
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => DeliverStat(),
                      ),
                    );
                  },
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Color(0xFF27262B)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 5,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFF500),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                '№ 20228 Доставляется',
                                style: TextStyle(
                                    color: Color(0xFFFFF500), fontSize: 20),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Text(
                                'Прямой',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF), fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                          child: Container(
                            height: 1,
                            color: Color(0xFFD9D9D9).withOpacity(0.2),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(17, 0, 10, 0),
                          child: Text(
                            'Сургут - Юганск',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF), fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(17, 8, 0, 0),
                          child: Text(
                            '1 декабря 2023',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF), fontSize: 20),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(18, 15, 20, 0),
                              child: Text(
                                'Связь ООО',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 15, 20, 0),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  '120 000,00 Р',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => AccessPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Color(0xFF27262B)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 5,
                              decoration: BoxDecoration(
                                  color: Color(0xFFE236C2),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                '№ 20229 Принят',
                                style: TextStyle(
                                    color: Color(0xFFE236C2), fontSize: 20),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Text(
                                'Прямой',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF), fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                          child: Container(
                            height: 1,
                            color: Color(0xFFD9D9D9).withOpacity(0.2),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(17, 0, 10, 0),
                          child: Text(
                            'Сургут - Ханты-Мансийск',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF), fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(17, 8, 0, 0),
                          child: Text(
                            '1 декабря 2023',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF), fontSize: 20),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(18, 15, 20, 0),
                              child: Text(
                                'Нефть ООО',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 15, 20, 0),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  '50 000,00 Р',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => DeletePage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Color(0xFF27262B)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 5,
                              decoration: BoxDecoration(
                                  color: Color(0xFFF44A5C),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                '№ 20227 Отменён',
                                style: TextStyle(
                                    color: Color(0xFFF44A5C), fontSize: 20),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Text(
                                'Прямой',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF), fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                          child: Container(
                            height: 1,
                            color: Color(0xFFD9D9D9).withOpacity(0.2),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(17, 0, 10, 0),
                          child: Text(
                            'Сургут - Ивдель',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF), fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(17, 8, 0, 0),
                          child: Text(
                            '2 декабря 2023',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF), fontSize: 20),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(18, 15, 20, 0),
                              child: Text(
                                'Югра ООО',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 15, 20, 0),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  '200 000,00 Р',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: ProjectBottomNavBar(),
    );
  }
}
