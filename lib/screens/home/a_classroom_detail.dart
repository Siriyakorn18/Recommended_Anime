import 'package:flutter/material.dart';

class DetailPage1 extends StatefulWidget {
  const DetailPage1({super.key});

  @override
  State<DetailPage1> createState() => _DetailPage1State();
}

class _DetailPage1State extends State<DetailPage1>{

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
                'Assassination Classroom',
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
                        child: Image(image: AssetImage('assets/images/a_classroom.jpg'),height: MediaQuery.of(context).size.height*0.4,width: MediaQuery.sizeOf(context).width*0.8),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.7,
                    child: Text('         โลกได้เจอกับเหตุการณ์ที่ระทึกขวัญที่สุดในประวัติศาสตร์ เมื่อวันนึงพระจันทร์ของโลกนั้นได้ถูกทำลายไปกว่า 70%'
                        ' และผู้ที่ทำลายพระจันทร์ก็คือสิ่งมีชีวิตลึกลับที่มีรูปร่างคล้ายกลับปลาหมึกตัวสีเหลือง โคโระ นั่นเอง มนุษย์ชาตินั้นไม่ว่าจะเป็นรัฐบาล '
                        'กองทัพทหาร หรืออาวุธที่ไฮเทคที่สุดของโลกก็ไม่อาจจะฆ่าสิ่งมีชีวิตชนิดนี้ได้ และเป้าหมายต่อไปของ โคโระ นั้นก็คือการทำลายโลกนั่นเอง '
                        'แต่แล้ววันนึง โคโระ ก็ได้ยื่นข้อเสนอให้กับโลกโดยการที่เค้าจะขอเป็นอาจารย์ที่ปรึกษาให้กับโรงเรียน มัธยมต้นคุนุกิงาโอกะ และหากเด็กนักเรียนในห้อง '
                        '3-E ฆ่าเค้าไม่ได้ก่อนจบการศึกษาโลกนี้จะต้องถูกทำลาย โดยผู้ที่สามารถฆ่า โมโระ ได้จะได้รับเงินถึงหมื่นล้านเยน'
                        ' และแล้วเรื่องราวของการแอบฆ่าอาจารย์ของนักเรียน 3-E ก็ได้เริ่มต้นขึ้น !!'),
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
                              'ชื่อภาษาไทย: ห้องเรียนลอบสังหาร',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )
                          ),
                          Text(
                              'เขียนโดย: ยูเซย์ มัตสึอิ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )
                          ),
                          Text(
                              'จำนวนภาค: 2 ภาค',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )
                          ),
                          Text(
                              'จำนวนตอน: 47 ตอน',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )
                          ),
                          Text(
                              'OVA: 1 ตอน ',
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

