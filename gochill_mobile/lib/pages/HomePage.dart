import 'package:flutter/material.dart';
import 'package:reprise_1/locPage.dart';

void main() => runApp(const HomePage());

/// This is the main application widget.
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
      appBar: AppBar(
        title: const Text('Antonella'),
        backgroundColor: Colors.orange,
      ),
      backgroundColor: Color(0xff000000),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
              ),
              child: Text(
                'components',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
                /*mainAxisAlignment: MainAxisAlignment.spaceBetween,*/

                ),
            SizedBox(height: 90),
            Container(
              margin: const EdgeInsets.all(10.0),
              width: 700,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color(0xff281140),
              ),
              child: Row(
                children: [],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              width: 700,
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color(0xff281140),
              ),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Text('Today events',
                      style: TextStyle(fontSize: 30, color: Color(0xffffffff))),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        width: 300,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        width: 300,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Location()));
                    },
                    child: Text('Sign in'),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        elevation: 8.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(color: Color(0xff3C618E))),
                        primary: Color(0xff3C618E)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      //child: _widgetOptions.elementAt(_selectedIndex),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'liked',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        onTap: _onItemTapped,
      ),
    );
  }
}
