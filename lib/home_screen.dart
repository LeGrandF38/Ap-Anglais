import 'package:ap_anglais/data.dart';
import 'package:ap_anglais/pages.dart'; 
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'widgets.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      body: Container(
        //  decoration: BoxDecoration(
        //   image: DecorationImage(
        //   image: AssetImage('assets/home.png'),
        //   fit: BoxFit.cover,
        //      ),
        //   ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  //Colors.black,
                  Colors.deepPurple,
                  Colors.deepPurple,
                  Colors.deepPurple,
                  Colors.black,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Opacity(
                  opacity: 0.2,
                  child: Image(
                    image: AssetImage('assets/home.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            /////////////////////////////////
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (contex) {
                        return f38studioScreen();
                      }));
                    },
                    child: Container(
                        child: Image(
                      image: AssetImage(
                        'assets/homeLogoApp.png',
                      ),
                      fit: BoxFit.contain,
                      height: 190,
                      width: 190,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        bouttonNiveau(
                          niveau: "Level 1",
                          description:
                              "Vous debutez et n'avez aucune experience en Anglais",
                          options: optionsN1,
                        ),
                        SizedBox(height: 10),
                        bouttonNiveau(
                          niveau: "Level 2",
                          description:
                              "Vous arrivez à comprendre mais avez des difficultés à vous exprimer",
                          options: optionsN2,
                        ),
                        SizedBox(height: 10),
                        bouttonNiveau(
                          niveau: "Level 3",
                          description:
                              "You want to deepen your knowledge and improve yourself",
                          options: optionsN3,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (contex) {
                        return f38studioScreen();
                      }));
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Center(
                        child: Image(
                          image: AssetImage(
                            'assets/homeLogo.png',
                          ),
                          fit: BoxFit.contain,
                        ),
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
