import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  late PageController _pageController;
  final totalPage = 3;

  _onScroll(){
    print('ssssssssss');
  }


  @override
  void initState() {
    _pageController=PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePage(page:"1",
              image: "https://images1.calcalist.co.il/PicServer2/20122005/343675/06_pc.jpg",
              title: 'Randonnée à Damous el khang 3in drahem',
              description: "Damous el khang 3in drahem Hosted By Good time club randonnes. Event starts on Sunday, 16 October 2016 and happening at Good time club randonnes, Tunis, TU. Register or Buy Tickets, Price information."),
          makePage(page:"2",
              image:"https://www.tfarhida.tn/media/com_jbusinessdirectory/pictures/events/30/103939190_2673745036065457_4952832638297096794_n.jpg" ,
              title: 'Randonnée Korbous',
              description: " Le forfait comprend: Transport allez retour: Bus touristique \n Guide / Photographe \n La règle premier payé premier servi sera rigoureusement appliquée. \n Les retardataires ne seront pas attendus."),
          makePage(page:"3",
              image: "https://www.billetweb.fr/files/page/thumb/randonnee-extreme-oued-el-gueb.jpg?v=1602690043",
              title: 'Randonnée extrême Oued El gueb',
              description: "Nous organisons une randonnée guidée dans la péninsule de l'Edough. Destination : Plage de Oued El Gueb \n Difficulté : 8.5/10  Une très bonne condition physique est requise ! \n Le parcours est varié, caractérisé par des terrains plus ou moins accidentés, dénivelé de - 300 m. Forêts, chêne lièges, des ruisseaux et certains passages dans des maquis."),

        ],
      ),
    );
  }

  Widget makePage({page,image,title,description})
  {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),

        child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.3,0.9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ]
          )
        ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
             children: [
               SizedBox( height: 40,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 crossAxisAlignment: CrossAxisAlignment.baseline,
                 textBaseline: TextBaseline.alphabetic,
                 children: [
                    Text(page,style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                   Text('/' + totalPage.toString(), style: TextStyle(color: Colors.white, fontSize: 15),)

                 ],
               ),
               Expanded(
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.end,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(title,style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold)),
                     ],
               )),
               SizedBox( height: 20,),
               Row(
                 children: [
                   Container(
                     margin: EdgeInsets.only(right: 3),
                     child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                   ),
                   Container(
                     margin: EdgeInsets.only(right: 3),
                     child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                   ),
                   Container(
                     margin: EdgeInsets.only(right: 3),
                     child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                   ),
                   Container(
                     margin: EdgeInsets.only(right: 3),
                     child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                   ),
                   Container(
                     margin: EdgeInsets.only(right: 5),
                     child: Icon(Icons.star,color: Colors.grey,size: 15,),
                   ),
                   Text("4.0",style: TextStyle(color: Colors.white70)),
                   Text("(2300)",style: TextStyle(color: Colors.white38,fontSize: 12,)),

                 ],
               ),
               SizedBox( height: 20,),
               Padding(
                 padding: const EdgeInsets.only(right: 50.0),
                 child: Text(description,style: TextStyle(color: Colors.white.withOpacity(.7),height: 1.9)),
               ),
               SizedBox( height: 20,),
               Text("Read More",style: TextStyle(color: Colors.white)),
               SizedBox( height: 30,),



             ],
            ),
          ),
        ),
    );
  }
}
