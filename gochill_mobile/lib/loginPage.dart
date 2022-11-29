import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reprise_1/pages/home.dart';
import 'package:reprise_1/services/api_base.dart';

void main() => runApp(const Login());

/// This is the stateful widget that the main application instantiates.
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _LoginState extends State<Login> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController errorController = TextEditingController();
  String error="";

  bool isLoading = false;
  bool isLoad =false;
  bool isError = true;


  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      isError = false;
    });
    super.initState();
  }
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
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
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 30),
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
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)),
                  color: Color(0xffffffff),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      margin: const EdgeInsets.all(10.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(20),
                                filled: true,
                                fillColor: Color(0xffe5e5e5),
                                hintText: "Name",
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              // The validator receives the text that the user has entered.
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  this.error = "Veuillez entrer votre email";
                                  return this.error;
                                }
                                return null;
                              },
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(20),
                                  filled: true,
                                  fillColor: Color(0xffe5e5e5),
                                  hintText: "Password",
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                ),
                                controller: passwordController,
                                obscureText: true,
                                // The validator receives the text that the user has entered.
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    this.error = "Veuillez entrer votre mot de passe";
                                    return this.error;
                                  }
                                  return null;
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(top: 30),
                      child: ElevatedButton(
                        onPressed: isLoad ? (){}: () async {
                          ApiBase _apiBase = ApiBase();
                          if ((_formKey.currentState?.validate() ?? false)) {
                            try {
                              final result = await InternetAddress.lookup('google.com');
                              if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
                                setState(() {this.isLoad = true;});
                                //await signIn(emailController.text,passwordController.text);
                                Map<String, dynamic> response = await _apiBase.post('login', data: jsonEncode({
                                  'email': emailController.text,
                                  'password': passwordController.text,
                                }),
                                    onError: (response) {
                                      setState(() {
                                        this.isError = true;
                                        this.isLoad = false;
                                        emailController.text = '';
                                        passwordController.text = '';
                                        showDialog(context: context, builder: (context) => AlertDialog(
                                          content:
                                          Container(
                                            padding:
                                            EdgeInsets.all(
                                                12),
                                            height:
                                            size.height *
                                                0.3,
                                            child:
                                            Column(
                                              children: [
                                                Icon(
                                                  Icons
                                                      .error,
                                                  color:
                                                  Colors.red,
                                                  size: size.height *
                                                      0.1,
                                                ),
                                                SizedBox(
                                                  height:
                                                  size.height * 0.05,
                                                ),
                                                Text(
                                                  response[
                                                  'message'],
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                      fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height:
                                                  20,
                                                ),
                                                Container(
                                                  width:
                                                  size.width * 0.5,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xff3C618E),
                                                      borderRadius: BorderRadius.circular(10)),
                                                  child:
                                                  ElevatedButton(
                                                    onPressed:
                                                        () {
                                                      Navigator.pop(context);
                                                    },
                                                    child:
                                                    Text(
                                                      "Ok",
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.white
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ));
                                      });
                                    });
                                setState(() {
                                  this.isError=false;
                                });
                                if (response['status'] == 'success') {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
                                } else {
                                  setState(() {this.isLoad = false;});
                                  showDialog(context: context, builder: (context) => AlertDialog(
                                    content:
                                    Container(
                                      padding:
                                      EdgeInsets.all(
                                          12),
                                      height:
                                      size.height *
                                          0.3,
                                      child:
                                      Column(
                                        children: [
                                          Icon(
                                            Icons
                                                .error,
                                            color:
                                            Colors.red,
                                            size: size.height *
                                                0.1,
                                          ),
                                          SizedBox(
                                            height:
                                            size.height * 0.05,
                                          ),
                                          Text(
                                            response[
                                            'message'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height:
                                            15,
                                          ),
                                          Container(
                                            width: size.width * 0.5,
                                            child:
                                            ElevatedButton(
                                              onPressed:
                                                  () {
                                                Navigator.pop(context);
                                              },
                                              style:ButtonStyle(
                                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                                backgroundColor: MaterialStateProperty.all<Color>(Color(0xff3C618E)),
                                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(10),
                                                        side: BorderSide(color: Color(0xff3C618E))
                                                    )
                                                )),
                                              child:
                                              Text(
                                                "Ok",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ));
                                }
                              }
                            } on SocketException catch (e) {
                              setState(() {this.errorController.text = "Kindly check your network and try again";});
                            }
                          }
                        },
                        child: Center(
                          child: isLoad ? CircularProgressIndicator():Text('Sign In'),
                        ),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(top: 20, bottom: 20),
                            elevation: 8.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide(color: Color(0xff3C618E))),
                            primary: Colors.black),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(top: 40),
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
            ),
          )
        ],
      ),
    );
  }
}
