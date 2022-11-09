import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:reprise_1/loginPage.dart';
import 'package:reprise_1/pages/register.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GOCHILL",
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[900],
          primaryColor: Colors.grey[900],

          textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.white),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primarySwatch: Colors.orange
      ),
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Urnice',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),

      body: Column(children: [
        Expanded(
            child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            child: Center(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Image.asset("assets/images/logo.jpeg"),
                //height: 450,
              ),
            ),
          ),
        )),
        Expanded(
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  //width: 500,
                  height: 300,
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(35),
                        topLeft: Radius.circular(35)),
                    color: Color(0xff3C618E),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 40),
                          alignment: Alignment.topLeft,
                          child: Text('Welcome',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xffffffff),
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10, right: 20),
                          child: Text(
                              'Lets introduce you to the word of  happiness and enjoyment.'
                              'Meet new friends, discover places and make yourself happy!',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xffffffff),
                                  height: 1.7)),
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(top: 25, bottom: 47, right: 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Sign In'),
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.only(
                                        left: 50,
                                        right: 50,
                                        top: 20,
                                        bottom: 20),
                                    elevation: 8.0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    primary: Colors.black),
                              ),
                              const SizedBox(height: 30),
                              SizedBox(
                                width: 20,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => RegisterPage()));
                                },
                                child: const Text('Sign Up'),
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.only(
                                        left: 50,
                                        right: 50,
                                        top: 20,
                                        bottom: 20),
                                    elevation: 8.0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        side: BorderSide(
                                            color: Color(0xFFD8774C))),
                                    primary: Color(0xFFD8774C)),
                              ),
                            ],
                          ),
                        )
                      ]),
                )))
      ]),
      //child: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
