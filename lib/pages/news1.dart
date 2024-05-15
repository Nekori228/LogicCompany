import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MainPage.dart';

class News1 extends StatelessWidget {
  const News1({Key? key}) : super(key: key);

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
                  'В пир и в мир: искусственный интеллект в логистике и ретейле',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFFFFF),
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 30),
                Image.asset('assets/newsPhoto1.png'),
                SizedBox(height: 30),
                Text(
                  "В последние годы искусственный интеллект (ИИ) стал ключевым игроком в индустрии логистики и розничной торговли, преобразуя традиционные подходы к управлению цепочками поставок и оптимизации процессов продаж. Это революционное проникновение технологий ИИ открывает новые возможности для компаний в области повышения эффективности, снижения затрат и улучшения обслуживания клиентов. \n\nОдной из ключевых областей, где применение искусственного интеллекта проявляет свою силу, является управление запасами. Системы ИИ могут анализировать огромные объемы данных о продажах, погоде, сезонных тенденциях и других факторах, чтобы предсказать спрос и оптимизировать запасы товаров. Это позволяет компаниям избежать нехватки товаров или излишков запасов, что приводит к сокращению потерь и увеличению прибыли. \n\nКроме того, искусственный интеллект вносит революционные изменения в области обслуживания клиентов. С помощью чат-ботов и виртуальных ассистентов на базе ИИ компании могут предоставлять персонализированное обслуживание в режиме реального времени, отвечая на вопросы покупателей и помогая им с выбором товаров. Это создает более гладкий и удобный опыт покупки, что способствует увеличению лояльности клиентов. \n\nОднако, несмотря на все преимущества, существуют и вызовы при внедрении ИИ в логистику и розничную торговлю. Одним из главных является обеспечение безопасности данных и защита от кибератак. Компании должны активно инвестировать в кибербезопасность, чтобы предотвратить потенциальные угрозы для своих систем.\n\nВ целом, использование искусственного интеллекта в логистике и розничной торговле открывает новые горизонты для бизнеса, повышая его конкурентоспособность и способствуя инновациям. Это не просто технологический тренд, а новая эпоха в развитии отрасли, где ИИ становится неотъемлемой частью успешной стратегии.",
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
