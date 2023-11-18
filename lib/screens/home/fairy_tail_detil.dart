import 'package:flutter/material.dart';

class DetailPage2 extends StatefulWidget {
  const DetailPage2({super.key});

  @override
  State<DetailPage2> createState() => _DetailPage2State();
}

class _DetailPage2State extends State<DetailPage2>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          toolbarHeight: 100,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Fairy Tail',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          )
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.fill,
            scale: 1,
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image(image: AssetImage('assets/images/fairy_tail.jpg'),height: MediaQuery.of(context).size.height*0.4,width: MediaQuery.sizeOf(context).width*0.8),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.7,
                    child: Text('       แฟรี่เทลเป็นกิลด์จอมเวทย์ในเมืองแมกโนเลีย เรื่องราวของแฟรี่เทลเริ่มต้นที่นัตสึ ดรากูนีล และแฮปปี้ '
                        'จอมเวทย์แห่งแฟรี่เทล ไปพบกับลูซี่ ฮาร์ทฟีเลีย จอมเวทย์ผู้อัญเชิญเทพแห่งดวงดาว '
                        'ลูซี่เองมีความต้องการที่จะเข้ากิลด์แฟรี่เทลอยู่แล้ว นัตสึ และแฮปปี้จึงชวนลูซี่เข้ากิลด์แฟรี่เทล และพบเจอกับเรื่องราวต่างๆมากมาย '
                        'ในแต่ละภาคนั้นมีทั้งความสุข ความสนุก ความเศร้า ความเสียใจ จากการเข้าไปเผชิญกับสิ่งต่างๆ '
                        'แต่แฟรี่เทลก็ยังคงดำรงอยู่ได้ด้วยเพราะความแข็งแกร่ง และความรักในพวกพ้อง ในครอบครัวของตัวเอง'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width*0.7,
                      child: Column(
                        children: [
                          Text(
                              'สถานะ: จบแล้ว',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )
                          ),
                          Text(
                              'ชื่อภาษาไทย: แฟรี่เทล ศึกจอมเวทอภินิหาร',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )
                          ),
                          Text(
                              'เขียนโดย: ฮิโระ มะชิมะ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )
                          ),
                          Text(
                              'จำนวนภาคทั้งหมด: 8 ภาค',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )
                          ),
                          Text(
                              'จำนวนตอนทั้งหมด: 328 ตอน',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )
                          ),
                          Text(
                              'ปัจจุบันกำลังจะมีภาคที่ 9',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

