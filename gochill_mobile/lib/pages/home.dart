import 'package:flutter/material.dart';
import 'package:reprise_1/locPage.dart';
import 'package:reprise_1/pages/details.dart';
import 'package:reprise_1/pages/notifications.dart';
import 'package:reprise_1/pages/profile.dart';
import 'package:reprise_1/pages/search.dart';
import 'package:reprise_1/partials/bottomNavigationBar.dart';
import 'package:reprise_1/partials/drawer.dart';
import 'package:flutter/services.dart';
import 'package:reprise_1/widgets/categorie_home.dart';

void main() => runApp(const HomePage());

/// This is the main application widget.
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GOCHILL",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[900],
        primaryColor: Colors.grey[900],
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.white),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.orange
      ),

      home: Home(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _HomeState extends State<Home> {



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("GOCHILL",style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
        actions:  [
          IconButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchEvent())
                );
              }, 
              icon: Icon(Icons.search)
          ),
          IconButton(
              onPressed: (){
                Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notifications())
                );
              },
              icon: Icon(Icons.notifications_outlined)
          )
        ],
        leading: Builder(
          builder: (BuildContext context){
            return IconButton(
              icon: const Icon(Icons.segment),
              onPressed: () => Scaffold.of(context).openDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        )
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              /*Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text("FIND THE BEST PARTY FOR YOU",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36
                        ),),
                      ),
                    ],
                ),
              ),*/
              SizedBox(
                height: 20,
              ),

              InkWell(
                child: Container(
                  padding: EdgeInsets.all(100),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.blueAccent,
                          Colors.pinkAccent
                        ]
                      ),
                      shape: BoxShape.circle
                  ),
                  child: Container(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text('Bienvenue sur GoChill',style: TextStyle(
                      color: Colors.white,
                    ),textAlign: TextAlign.center,),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Cliquez sur l'icône précédente pour voir les fêtes en cours",style: TextStyle(
                      color: Colors.white,
                    ),textAlign: TextAlign.center,),
                  ],
                )
              ),
              SizedBox(
                height: 40,
              ),

              Container(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child:Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Colors.blueAccent,
                                      Colors.pinkAccent
                                    ]
                                ),
                                shape: BoxShape.circle
                            ),
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(25),
                                child: Image.asset("assets/images/pexels-edward-eyer-1587292.jpg", fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Karaoké')
                        ],
                      ),
                      width: size.width * 0.25 - 10,
                    ),
                    Container(
                      child:Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(1), // Border width
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Colors.blueAccent,
                                      Colors.pinkAccent
                                    ]
                                ),
                                shape: BoxShape.circle),
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(25), // Image radius
                                child: Image.asset("assets/images/pexels-maurício-mascaro-948199.jpg", fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Barbecue')
                        ],
                      ),
                      width: size.width * 0.25 - 10,
                    ),
                    Container(
                      child:Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Colors.blueAccent,
                                      Colors.pinkAccent
                                    ]
                                ),
                                shape: BoxShape.circle
                            ),
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(25),
                                child: Image.asset("assets/images/pexels-koolshooters-6621701.jpg", fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Pool Party')
                        ],
                      ),
                      width: size.width * 0.25 - 10,
                    ),
                    Container(
                      child:Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Colors.blueAccent,
                                      Colors.pinkAccent
                                    ]
                                ),
                                shape: BoxShape.circle
                            ),
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(25),
                                child: Image.asset("assets/images/pexels-edward-eyer-1587292.jpg", fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Chill')
                        ],
                      ),
                      width: size.width * 0.25 - 10,
                    ),
                  ],
                )
              ),
              SizedBox(
                height: 20,
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategorieHome(
                      title: "Afro Party",
                      lieu: "Terrain de Ténnis ElDorado",
                      date: "dim.13.aout",
                      price: "2000",
                      image_url: 'assets/images/pexels-edward-eyer-1587292.jpg',
                      details_link: DetailsPage(),
                    ),
                    CategorieHome(
                      title: "Barbecue Party",
                      lieu: "Family Beach",
                      date: "dim.24.dec",
                      price: "5000",
                      image_url: 'assets/images/pexels-maurício-mascaro-948199.jpg',
                      details_link: DetailsPage(),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ),
      //child: _widgetOptions.elementAt(_selectedIndex),

    );
  }
}
