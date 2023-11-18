import 'package:flutter/material.dart';

class DetailPage4 extends StatefulWidget {
  const DetailPage4({super.key});

  @override
  State<DetailPage4> createState() => _DetailPage4State();
}

class _DetailPage4State extends State<DetailPage4>{

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
                'Naruto',
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
                        child: Image(image: AssetImage('assets/images/naruto.jpg'),height: MediaQuery.of(context).size.height*0.4,width: MediaQuery.sizeOf(context).width*0.8),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.7,
                    child: Text('        ในแว่นแคว้นของโลกแห่งนินจา หมู่บ้านโคโนฮะได้ถูกปีศาจจิ้งจอกเก้าหางโจมตีเมื่อสิบสองปีก่อน ทำให้โฮคาเงะรุ่นที่ 4 ซึ่งเป็นหัวหน้าหมู่บ้าน'
                        ' ต้องยอมพลีชีพเพื่อสะกดวิญญาณของปีศาจจิ้งจอกเก้าหาง โดยผนึกไว้ในร่างของทารกคนหนึ่ง นามว่า อุซึมากิ นารูโตะ สิบสองปีถัดมา '
                        'นารูโตะถูกเกลียดชังจากชาวบ้านที่ล่วงรู้ความลับที่เป็นพลังสถิตร่างของจิ้งจอกเก้าหาง นารูโตะมีความใฝ่ฝันจะเป็นโฮคาเงะและอยากให้ทุกคนยอมรับ'),
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
                              'ชื่อภาษาไทย: นินจาคาถาโอ้โฮเฮะ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )
                          ),
                          Text(
                              'เขียนโดย: มาซาชิ คิชิโมโตะ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )
                          ),
                          Text(
                              'จำนวนภาค: 3 ภาค ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )
                          ),
                          Text(
                              'จำนวน: 720 ตอน',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )
                          ),
                          Text(
                              'ปัจจุบันกำลังมีภาคลูกต่อชื่อว่า "Boruto"',
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

