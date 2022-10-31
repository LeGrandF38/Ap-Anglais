import 'package:ap_anglais/pages.dart';
import 'package:flutter/material.dart';
import 'pages.dart';
import 'package:url_launcher/url_launcher.dart';

class bouttonOption extends StatelessWidget {
  Option option;
  bouttonOption({required this.option});
  //const optionBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (contex) {
          if (option.titre == "") {
            return f38studioScreen();
          } else {
            return optionScreen(option: option);
          }
        }));
      },
      child: Container(
        height: 200,
        child: Card(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          color: Colors.transparent,
          shadowColor: Color(0xff673ab7),
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            children: [
              Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    option.image,
                    fit: BoxFit.cover,
                  )),
              Opacity(
                opacity: 0.7,
                child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                  colors: [
                    Colors.black,

                    Colors.transparent,
                    //Colors.black,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ))),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        option.titre,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.w700,
                          //fontFamily: "OpenSans",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        option.soustitre,
                        style: TextStyle(
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.w600,
                          color: Colors.deepPurple,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

////////////////////////////////////////////////////

class bouttonNiveau extends StatelessWidget {
  //const bouttonNiveau({Key? key}) : super(key: key);
  List<Option> options;

  String niveau;
  String description;
  bouttonNiveau(
      {required this.niveau, required this.description, required this.options});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (contex) => NiveauScreen(options: options)));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
        elevation: 20,
        child: Container(
            decoration: BoxDecoration(
              color: Color(0xff673ab7),
              borderRadius: BorderRadius.circular(80),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    niveau,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: "OpenSans",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 1, 8, 1),
                    child: Text(
                      description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
///////////////////////////////////////////////

// class bouttondata extends StatelessWidget {
//   //const bouttondata({ Key? key }) : super(key: key);
//   String titre;
//   String description;
//   String url;
//   bouttondata(
//       {required this.titre, required this.description, required this.url});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.green,
//         child: Column(
//           children: [
//             Text(titre),
//             Text(description),
//             Text(url),
//           ],
//         ));
//   }
// }

/////////////////////////////////////////////////////
///
///

///
///

//////////////////////////////////////////
class ContainerConseil extends StatelessWidget {
  ContainerConseil({required this.conseil});
  Conseil conseil;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Card(
        color: Color(0xff673ab7),
        elevation: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  conseil.tire,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  conseil.description,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.w300,
                  ),
                ),
                //Text(conseil.url),
                bouttonUrl(conseil.url),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

////////////////
///
///
class bouttonUrl extends StatelessWidget {
  String url;
  bouttonUrl(this.url);

  @override
  Widget build(BuildContext context) {
    if (url == "") {
      return Text("");
    } else {
      return ElevatedButton(
        onPressed: () {
          Lancement.OpenLinkUrl(uRl: url);
        },
        child: Text(
          "Try now",
          style: TextStyle(color: Colors.deepPurpleAccent.shade700),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed))
                return Colors.deepPurpleAccent.shade700;
              return Colors.white;
            },
          ),
        ),
      );
    }
  }
}

////////////////////////////
///
///
class bouttonUrl2 extends StatelessWidget {
  String url;
  String name;
  bouttonUrl2(this.url, this.name);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          Lancement.OpenLinkUrl(uRl: url);
        },
        child: Text(
          name,
          style: TextStyle(color: Colors.deepPurpleAccent.shade700),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed))
                return Colors.deepPurpleAccent.shade700;
              return Colors.white;
            },
          ),
        ),
      ),
    );
  }
}

///
class Lancement {
  static Future OpenLinkUrl({required String uRl}) {
    return _launcher(uRl: uRl);
  }

  static Future _launcher({required String uRl}) async {
    if (await canLaunch(uRl)) {
      await launch(uRl);
    }
  }
}

/////////////////////////////////
class Conseil {
  Conseil({required this.tire, required this.description, required this.url});
  String tire;
  String description;
  String url;
}

//////////////////////////////
class Option {
  String image;
  Option(
      {required this.image,
      required this.titre,
      required this.soustitre,
      required this.conseils});
  String titre;
  String soustitre;
  List<Conseil> conseils;
}

//////////////////