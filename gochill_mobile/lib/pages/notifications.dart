import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 70),
                child: Text("Notifications",style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),textAlign: TextAlign.center,),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: CircleAvatar(),
                      ),
                      Container(
                        margin : EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              child: Text("Lou"),
                            ),
                            Container(
                              child: Text('kjjfjfhhh'),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: CircleAvatar(),
                      ),
                      Container(
                        margin : EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              child: Text("Lou"),
                            ),
                            Container(
                              child: Text('kjjfjfhhh'),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: CircleAvatar(),
                      ),
                      Container(
                        margin : EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              child: Text("Lou"),
                            ),
                            Container(
                              child: Text('kjjfjfhhh'),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: CircleAvatar(),
                      ),
                      Container(
                        margin : EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              child: Text("Lou"),
                            ),
                            Container(
                              child: Text('kjjfjfhhh'),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}
