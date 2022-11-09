import 'package:flutter/material.dart';
import 'package:reprise_1/widgets/myTextFormField.dart';

class ProfilePage extends StatelessWidget {

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
                  child: Text("Profile",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36
                  ),),
                ),
                SizedBox(
                  height: 130,
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
                        height: 10,
                      ),
                      MyTextFormField(
                        isPassword: false,
                        isNumber: true,
                        displayText: "Gender",
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
                        height: 10,
                      ),
                      MyTextFormField(
                        isPassword: true,
                        displayText: "Number",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyTextFormField(
                        isPassword: true,
                        displayText: "Password",
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
