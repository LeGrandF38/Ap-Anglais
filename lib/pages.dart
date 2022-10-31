import 'package:flutter/material.dart';

import 'widgets.dart';

class optionScreen extends StatelessWidget {
  //const myConseilPage({ Key? key }) : super(key: key);
  Option option;

  optionScreen({required this.option});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //     body: Center(
        //   child: Container(
        //     child: Text(option.conseils.first.tire),
        //   ),
        // )
        body: Container(
      color: Color(0xff673ab7),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Color(0xff673ab7),
            pinned: true,
            //floating: true,
            //snap: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              //centerTitle: false,
              //titlePadding: null,
              title: Text(
                option.titre,
                style: TextStyle(fontSize: 16),
              ),
              background: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )),
                child: Opacity(
                  opacity: 0.4,
                  child: Image.asset(
                    option.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //background: Image.asset("assets/home.png"),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ContainerConseil(conseil: option.conseils[index]);
              },
              childCount: option.conseils.length,
            ),
          )

          //buildList(option.conseils),
        ],
      ),
    ));
  }
}

//////////
///
///
class NiveauScreen extends StatelessWidget {
  //const homeNiveau2({Key? key}) : super(key: key);
  List<Option> options;

  NiveauScreen({required this.options});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color(0xff673ab7),
      child: ListView.builder(
        itemCount: options.length,
        itemBuilder: (context, index) {
          return bouttonOption(option: options[index]);
        },
      ),
    ));
  }
}

/////////////////////////////////
///
///
class f38studioScreen extends StatelessWidget {
  const f38studioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff673ab7),
      //color: Colors.deepPurpleAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image(image: AssetImage('assets/dev1.png')),
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              """Nous sommes une start-up nigérienne spécialisée dans le développement informatique, le graphisme ,les montages vidéos  et le marketing digital.
Nous vous garantissons que Ap Anglais ne contient aucune publicité vidéo et n'en aura pas même dans les mises à jour à venir.
Si vous souhaitez nous soutenir, vous pouvez nous suivre sur les réseaux sociaux:""",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontFamily: "OpenSans",
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  bouttonUrl2("https://www.facebook.com/StudioF38", "Facebook"),
                  bouttonUrl2("https://twitter.com/F38Studio", "Twitter"),
                ],
              ),
              Column(
                children: [
                  bouttonUrl2(
                      "https://www.instagram.com/f38studio/", "Instagram"),
                  bouttonUrl2(
                      "https://www.youtube.com/channel/UCTYmEiC7jErdD1ZQQK5nB_g",
                      "YouTube"),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
