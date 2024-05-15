import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MainPage.dart';

class News2 extends StatelessWidget {
  const News2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF110F18),
      appBar: AppBar(
        title: Text(
          'Новости',
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
                builder: (context) => MainPage(),
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
                Text(
                  'РЖД предложили автоконцернам доставлять машины по железной дороге',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFFFFF),
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 30),
                Image.asset('assets/newsPhoto2.png'),
                SizedBox(height: 30),
                Text(
                  "Российские Железные Дороги (РЖД) выдвинули предложение автопроизводителям о переводе логистики автомобилей на железнодорожный транспорт. Это стратегическое предложение призвано улучшить эффективность и экологическую устойчивость транспортировки автомобилей, а также снизить нагрузку на дорожную инфраструктуру. \n\nВ соответствии с планом РЖД, автоконцерны могут воспользоваться преимуществами железнодорожного транспорта для массовой доставки своей продукции по всей стране. Это позволит снизить издержки на логистику и улучшить условия поставок для автопроизводителей и их клиентов. \n\nКроме того, перевод логистики автомобилей на железнодорожный транспорт будет способствовать сокращению выбросов углекислого газа и других вредных веществ, что соответствует стремлению мирового сообщества к более экологически чистым видам транспорта. \n\nПредложение РЖД вызвало интерес со стороны автопроизводителей, которые уже начали оценивать возможности перевода своих логистических потоков на железнодорожный транспорт. Это открывает новые перспективы для сотрудничества между автомобильной и железнодорожной отраслями, а также способствует развитию интегрированных систем транспортной логистики в России.",
                  style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.start,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
