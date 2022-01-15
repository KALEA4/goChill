import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:reprise_1/loginPage.dart';

void main() => runApp(const Location());

/// This is the main application widget.
class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
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

      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            child: Center(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Image.asset("assets/images/logo.jpeg"),
                height: 450,
              ),
            ),
          ),
          Container(
            width: 500,
            padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color(0xff3C618E),
            ),
            child: Column(children: [
              Container(
                padding: EdgeInsets.only(top: 40),
                alignment: Alignment.topLeft,
                child: Text('Welcome',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xffffffff),
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, right: 10),
                child: Text(
                    'Lets introduce you to the word of  happiness and enjoyment.'
                    'Meet new friends, discover places and make yourself happy!',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xffffffff),
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 47, bottom: 47),
                child: Column(children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Sign in'),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(
                                left: 40, right: 40, top: 20, bottom: 20),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            primary: Colors.black),
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: const Text('Sign up'),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(
                                left: 40, right: 40, top: 20, bottom: 20),
                            elevation: 8.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide(color: Color(0xFFD8774C))),
                            primary: Color(0xFFD8774C)),
                      ),
                    ],
                  ),
                ]),
              )
            ]),
          )
        ]),
      ),
      //child: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
