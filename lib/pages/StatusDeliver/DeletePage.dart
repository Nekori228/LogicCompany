import 'dart:async';

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../AcceptedPage.dart';
import '../DeliveredPage.dart';

class DeletePage extends StatefulWidget {
  const DeletePage({Key? key}) : super(key: key);

  @override
  State<DeletePage> createState() => _DeletePageState();
}

class _DeletePageState extends State<DeletePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF110F18),
      appBar: AppBar(
        title: Text(
          'Заказ №20227',
          style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 26,
              fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFFFFFFFF),
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => AcceptedPage(),
              ),
            );
          },
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
                Container(
                  height: 670,
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
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text(
                              '№ 20227 Отменён',
                              style: TextStyle(
                                  color: Color(0xFFF44A5C), fontSize: 16),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: Text(
                              'Связь ООО',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF), fontSize: 17),
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
                            padding: const EdgeInsets.fromLTRB(17, 0, 10, 5),
                            child: Image.asset('assets/route4.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Сургут',
                                style: TextStyle(
                                    color: Color(0xFFF44A5C), fontSize: 20),
                              ),
                              Text(
                                '1 декабря 2023',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF).withOpacity(0.5),
                                    fontSize: 13),
                              ),
                              Text(
                                'В сборке',
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
                                'Передаётся в доставку',
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
                                'В пути',
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
                                'Ожидает в пункте выдачи',
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
                                'Получен',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF), fontSize: 20),
                              ),
                              Text(
                                '2 декабря 2023',
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
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Container(
                          height: 200,
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: Color(0xFF4F4E55),
                          ),
                          margin: EdgeInsets.symmetric(
                              horizontal:
                              MediaQuery.of(context).size.width * 0.05),
                          child: Center(
                            child: Text(
                              'Заказ был отменён',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
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
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
