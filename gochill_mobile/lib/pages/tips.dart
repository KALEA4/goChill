import 'package:flutter/material.dart';

class TipsPage extends StatefulWidget {

  @override
  State<TipsPage> createState() => _TipsPageState();
}

class _TipsPageState extends State<TipsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Tips',style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),textAlign: TextAlign.center,)
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff2a2c41),
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search_outlined,color: Colors.white70,),
                  contentPadding: EdgeInsets.only(left: 20,top: 20,bottom: 20,right: 20),
                  hintStyle: TextStyle(
                      color: Colors.white70
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(5),
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
