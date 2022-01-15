import 'package:flutter/material.dart';
import 'package:reprise_1/HomePage.dart';

void main() => runApp(const Login());

/// This is the stateful widget that the main application instantiates.
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _LoginState extends State<Login> {
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
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD8774C),
      appBar: AppBar(
          backgroundColor: Color(0xFFD8774C),
          elevation: 0,
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Register',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back))),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 45),
                child: Column(
                  children: [
                    Container(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffF2F2F2),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 16),
                          child: Text(
                            'sign in here to continue the adventure',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xffF2F2F2),
                            ),
                          ),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)),
                  color: Color(0xffffffff),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    SizedBox(height: 20),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      width: 400,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Name",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40))),
                              // The validator receives the text that the user has entered.
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    fillColor: Colors.green,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    )),
                                // The validator receives the text that the user has entered.
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Center(
                          child: Text('Sign in'),
                        ),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(top: 20, bottom: 20),
                            elevation: 8.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide(color: Color(0xff3C618E))),
                            primary: Color(0xff3C618E)),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Center(
                            child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text('Continue with Google')],
                        )),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(top: 20, bottom: 20),
                            elevation: 8.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide(color: Color(0xff3C618E))),
                            primary: Color(0xff3C618E)),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 40, right: 10, left: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Center(
                          child: Text('Continue with Facebook'),
                        ),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(top: 20, bottom: 20),
                            elevation: 8.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide(color: Color(0xff3C618E))),
                            primary: Color(0xff3C618E)),
                      ),
                    )
                  ],
                ),
              ),
              Column(),
            ],
          ),
        ),
        //child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
