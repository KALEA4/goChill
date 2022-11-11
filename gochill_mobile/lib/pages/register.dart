import 'package:flutter/material.dart';
import 'package:reprise_1/pages/home.dart';
import 'package:reprise_1/widgets/bottom_navigation_control.dart';
import 'package:reprise_1/widgets/myTextFormField.dart';

class RegisterPage extends StatefulWidget {

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  List<DropdownMenuItem<String>> gender = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000624),
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 60),
                alignment: Alignment.center,
                child: Text("Sign Up",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36
                ),),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyTextFormField(
                      isPassword: false,
                      displayText: "Pseudo",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DropdownButtonFormField(
                      onChanged: (event){},
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0x56fcfdfd),
                          hintText: "Gender",
                          contentPadding: EdgeInsets.only(left: 20,top: 20,bottom: 20,right: 20),
                          hintStyle: TextStyle(
                              color: Colors.white
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      items: gender
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MyTextFormField(
                      isPassword: false,
                      isNumber: true,
                      displayText: "Age",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MyTextFormField(
                      isPassword: false,
                      isNumber: true,
                      displayText: "Phone",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MyTextFormField(
                      isPassword: true,
                      displayText: "Password",
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigationControl()));
                      },
                      child: Center(
                        child: Text('Sign Up'),
                      ),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.only(top: 20, bottom: 20),
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          primary: Colors.white
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
