import 'package:flutter/material.dart';
import 'package:recommended_anime/screens/home/reviewanime.dart';
import 'package:recommended_anime/screens/home/slime_detail.dart';
import 'package:recommended_anime/screens/home/full_metal_detil.dart';
import 'package:recommended_anime/screens/home/fairy_tail_detil.dart';
import 'package:recommended_anime/screens/home/naruto_detail.dart';
import 'package:recommended_anime/screens/home/a_classroom_detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}
class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        toolbarHeight: 100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/paimon.png',scale: 9),
            Text(
              'Recommended Anime By 630710339',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Ink(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.fill,
            )
        ),
//------------------------------------------------------------------------------
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context){
                          return DetailPage1();
                        }
                    ));
                  },
                  borderRadius: BorderRadius.circular(30),
                  splashColor: Colors.black.withOpacity(0.1),
                  hoverColor: Colors.black.withOpacity(0.2),
                  highlightColor: Colors.black.withOpacity(0.12),
                  child: Ink(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.yellowAccent,
                        border: Border.all(
                          color: Colors.black,
                        )
                    ),
                    width: MediaQuery.of(context).size.width*0.3,
                    height: 50,
                    child: Center(
                      child: Text(
                        'Assassination Classroom',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
//------------------------------------------------------------------------------
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context){
                          return DetailPage2();
                        }
                    ));
                  },
                  borderRadius: BorderRadius.circular(30),
                  splashColor: Colors.black.withOpacity(0.1),
                  hoverColor: Colors.black.withOpacity(0.2),
                  highlightColor: Colors.black.withOpacity(0.12),
                  child: Ink(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.lightBlueAccent,
                        border: Border.all(
                          color: Colors.black,
                        )
                    ),
                    width: MediaQuery.of(context).size.width*0.3,
                    height: 50,
                    child: Center(
                      child: Text(
                        'Fairy Tail',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
//------------------------------------------------------------------------------
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context){
                          return DetailPage3();
                        }
                    ));
                  },
                  borderRadius: BorderRadius.circular(30),
                  splashColor: Colors.black.withOpacity(0.1),
                  hoverColor: Colors.black.withOpacity(0.2),
                  highlightColor: Colors.black.withOpacity(0.12),
                  child: Ink(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.redAccent,
                        border: Border.all(
                          color: Colors.black,
                        )
                    ),
                    width: MediaQuery.of(context).size.width*0.3,
                    height: 50,
                    child: Center(
                      child: Text(
                        'Fullmetal Alchemist: Brotherhood',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
//------------------------------------------------------------------------------
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context){
                          return DetailPage4();
                        }
                    ));
                  },
                  borderRadius: BorderRadius.circular(30),
                  splashColor: Colors.black.withOpacity(0.1),
                  hoverColor: Colors.black.withOpacity(0.2),
                  highlightColor: Colors.black.withOpacity(0.12),
                  child: Ink(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.deepOrangeAccent,
                        border: Border.all(
                          color: Colors.black,
                        )
                    ),
                    width: MediaQuery.of(context).size.width*0.3,
                    height: 50,
                    child: Center(
                      child: Text(
                        'Naruto',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
//------------------------------------------------------------------------------
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context){
                          return DetailPage5();
                        }
                    ));
                  },
                  borderRadius: BorderRadius.circular(30),
                  splashColor: Colors.black.withOpacity(0.1),
                  hoverColor: Colors.black.withOpacity(0.2),
                  highlightColor: Colors.black.withOpacity(0.12),
                  child: Ink(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue,
                        border: Border.all(
                          color: Colors.black,
                        )
                    ),
                    width: MediaQuery.of(context).size.width*0.3,
                    height: 50,
                    child: Center(
                      child: Text(
                        'Tensei shitara slime datta ken',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
//------------------------------------------------------------------------------
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context){
                          return ReviewAnimePage();
                        }
                    ));
                  },
                  borderRadius: BorderRadius.circular(30),
                  splashColor: Colors.black.withOpacity(0.1),
                  hoverColor: Colors.black.withOpacity(0.2),
                  highlightColor: Colors.black.withOpacity(0.12),
                  child: Ink(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.greenAccent,
                        border: Border.all(
                          color: Colors.black,
                        )
                    ),
                    width: MediaQuery.of(context).size.width*0.3,
                    height: 50,
                    child: Center(
                      child: Text(
                        'Review Anime',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}