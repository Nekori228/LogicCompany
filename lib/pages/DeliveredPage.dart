import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'StatusDeliver/DeliverStat.dart';
import 'ProgBar.dart';
import 'StatusDeliver/SuccessPage.dart';
import 'StatusDeliver/SuccessPage2.dart';
import 'StatusDeliver/SuccessPage3.dart';
import 'Test.dart';

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
                        builder: (context) => SuccessPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 210,
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
                                  color: Color(0xFF269E6E),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                '№ 20226 Доставлен',
                                style: TextStyle(
                                    color: Color(0xFF269E6E), fontSize: 15),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Text(
                                'Связь ООО',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF), fontSize: 15),
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
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(17, 0, 10, 20),
                              child: Image.asset('assets/route.png'),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Сургут',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF), fontSize: 20),
                                ),
                                Text(
                                  '1 декабря 2023',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(0.5),
                                      fontSize: 13),
                                ),
                                Text(
                                  'Юганск',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF), fontSize: 20),
                                ),
                                Text(
                                  '2 декабря 2023',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(0.5),
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                          child: Container(
                            height: 1,
                            color: Color(0xFFD9D9D9).withOpacity(0.2),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(18, 0, 20, 0),
                              child: Text(
                                'Фатин Антон Сергеевич',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  'Газель Н 039 АТ (186)',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 10,
                                  ),
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
                        builder: (context) => SuccessPage2(),
                      ),
                    );
                  },
                  child: Container(
                    height: 210,
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
                                  color: Color(0xFF269E6E),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                '№ 20225 Доставлен',
                                style: TextStyle(
                                    color: Color(0xFF269E6E), fontSize: 15),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Text(
                                'Нефть ООО',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF), fontSize: 15),
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
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(17, 0, 10, 20),
                              child: Image.asset('assets/route.png'),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Сургут',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF), fontSize: 20),
                                ),
                                Text(
                                  '1 декабря 2023',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(0.5),
                                      fontSize: 13),
                                ),
                                Text(
                                  'Ханты-Мансийск',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF), fontSize: 20),
                                ),
                                Text(
                                  '2 декабря 2023',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(0.5),
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                          child: Container(
                            height: 1,
                            color: Color(0xFFD9D9D9).withOpacity(0.2),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(18, 0, 20, 0),
                              child: Text(
                                'Пущин Антон Сергеевич',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  'Газель Н 039 АТ (186)',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 10,
                                  ),
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
                        builder: (context) => SuccessPage3(),
                      ),
                    );
                  },
                  child: Container(
                    height: 210,
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
                                  color: Color(0xFF269E6E),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                '№ 20224 Доставлен',
                                style: TextStyle(
                                    color: Color(0xFF269E6E), fontSize: 15),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Text(
                                'Югра ООО',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF), fontSize: 15),
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
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(17, 0, 10, 20),
                              child: Image.asset('assets/route.png'),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Сургут',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF), fontSize: 20),
                                ),
                                Text(
                                  '1 декабря 2023',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(0.5),
                                      fontSize: 13),
                                ),
                                Text(
                                  'Ивдель',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF), fontSize: 20),
                                ),
                                Text(
                                  '4 декабря 2023',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(0.5),
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                          child: Container(
                            height: 1,
                            color: Color(0xFFD9D9D9).withOpacity(0.2),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(18, 0, 20, 0),
                              child: Text(
                                'Клинов Антон Сергеевич',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  'Газель Н 039 АТ (186)',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 10,
                                  ),
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
