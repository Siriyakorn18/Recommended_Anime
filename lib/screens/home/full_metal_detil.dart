import 'package:flutter/material.dart';

class DetailPage3 extends StatefulWidget {
  const DetailPage3({super.key});

  @override
  State<DetailPage3> createState() => _DetailPage3State();
}

class _DetailPage3State extends State<DetailPage3>{

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
                'Fullmetal Alchemist Brotherhood',
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
                        child: Image(image: AssetImage('assets/images/full_metal.jpg'),height: MediaQuery.of(context).size.height*0.4,width: MediaQuery.sizeOf(context).width*0.8),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.7,
                    child: Text('        เอ็ดเวิร์ด และ อัลฟองเซ เอลริค สองพี่น้องตระกูลเอลริค ต้องสูญเสียแม่อันเป็นที่รักไปอย่างกะทันหันด้วยโรคระบาด '
                        'ทั้งคู่จึงตัดสินใจใช้วิชาแปรธาตุในการ ชุบชีวิตมนุษย์ ซึ่งถือเป็นวิชาต้องห้ามของการเล่นแร่แปรธาตุ เพื่อคืนชีพชีวิตให้กับแม่ของตน '
                        'แต่ด้วยสัจจะของโลกแล้วไม่สามารถสร้างชีวิตขึ้นล้วงลับไปแล้วได้ เอ็ดและอัลต้องจ่ายค่าผ่านทางในการรับรู้แก่นแท้โดยแลกด้วยร่างกาย '
                        'เอ็ดจ่ายด้วยขาซ้าย ส่วนอัลจ่ายด้วยร่างกายทั้งหมด เมื่อกลับขึ้นมากจากประตูแห่งสัจจะเอ็ดพบว่าร่างของน้องชายนั้นหายไปทั้งหมด '
                        'จึงจ่ายด้วยแขขวาเพื่อดึงวิญญาณของน้องชายผนึกไว้ในชุดเกราะด้วยตราวงแหวนเลือด '
                        'พันเอก รอย มัสแตง แห่งกองทัพทราบเรื่องว่าเอ็ดมีฝีมือถึงขนาดสามารถผนึกวิญญาณได้ จึงเสนอให้เอ็ดเข้าเป็น นักเล่นแร่แปรธาตุของทางการ '
                        'เพื่อที่เอ็ดจะได้รับสิทธิต่างๆจากทางการ และเป็นการสะดวกยิ่งขึ้นในการหาวิธีกลับเป็นเหมือนเดิม เอ็ดได้ตอบตกลงเข้านักเล่นแร่แปรธาตุของทางการ'
                        ' ได้ฉายาว่า นักเล่นแร่แปรธาตุเหล็กไหล จากการที่เขาสามารถใช้วิชาแปรธาตุได้โดยไม่ต้องใช้วงแหวนแปรธาตุ และเริ่มออกตามหาศิลานักปราชญ์ '
                        'เป็นศิลาวิเศษที่ทำให้สามารถใช้พลังการแปรธาตุที่อยู่เหนือกฎเกณฑ์การแลกเปลี่ยนที่ทัดเทียมกัน'),
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
                              'ชื่อภาษาไทย: แขนกลคนแปรธาตุ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )
                          ),
                          Text(
                              'เขียนโดย: ฮิโระชิ โอโนะงิ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )
                          ),
                          Text(
                              'จำนวนตอน: 64 ตอน',
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

