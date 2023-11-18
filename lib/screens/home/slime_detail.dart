import 'package:flutter/material.dart';

class DetailPage5 extends StatefulWidget {
  const DetailPage5({super.key});

  @override
  State<DetailPage5> createState() => _DetailPage5State();
}

class _DetailPage5State extends State<DetailPage5>{

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
                'Tensei shitara slime datta ken',
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
                        child: Image(image: AssetImage('assets/images/slime.jpg'),height: MediaQuery.of(context).size.height*0.4,width: MediaQuery.sizeOf(context).width*0.8),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.7,
                    child: Text('         มิคามิ ซาโตรุ  หนุ่มโสด ไม่เคยมีแฟน วัย 37 ปี ถูกแทงตายเพราะช่วยเพื่อนจากคนร้าย'
                        ' เขาได้เกิดใหม่ในต่างโลกด้วยร่างของสไลม์ ได้พบมังกร เวรุโดร่า ผู้ถูกผนึกมาร่วม 3 ร้อยปีและรู้ว่าเขามาจากต่างโลก '
                        'ด้วยความเบื่อหน่ายในชีวิตจึงยอมเป็นเพื่อนกับสไลม์ ตั้งชื่อให้เขา “ริมุรุ” และให้เขากลืนตนเข้าไปในร่าง ด้วย 2 ความสามารถ “นักล่า” '
                        'ที่ทำให้เขาสามารถชิงความสามารถของผู้ถูกกลืน และ “ปราชญ์ผู้ยิ่งใหญ่” ทำให้เขาเข้าใจเรื่องราวในโลกใหม่ '
                        'ส่งผลให้เขาพัฒนาเป็นสไลม์ที่น่าเกรงขามต่อเหล่ามอนสเตอร์ทั่วไป'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width*0.7,
                      child: Column(
                        children: [
                          Text(
                              'สถานะ: ยังไม่จบแล้ว',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )
                          ),
                          Text(
                              'ชื่อภาษาไทย: เกิดใหม่ทั้งทีก็เป็นสไลม์ไปซะแล้ว',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )
                          ),
                          Text(
                              'เขียนโดย: ฟูเซะ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )
                          ),
                          Text(
                              'จำนวนตอนทั้งหมด:47 ตอน',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )
                          ),
                          Text(
                              'OVA: 1 ตอน',
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