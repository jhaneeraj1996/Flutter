import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '';
  String password = '';
  String message = '';
  // double ver = 0.0;
  List validate = [true, true];

  void inputValidation() {
    message = '';
    (email != '') ? validate[0] = true : validate[0] = false;
    (password != '') ? validate[1] = true : validate[1] = false;
    if (email != '' && password != '') {
      if (email == "a@gmail.com" && password == "1234") {
        message = '';
      } else {
        message = 'Email or Password does not match';
      }
    }
  }

  @override
  Widget build(BuildContext context) {

    precacheImage(AssetImage('images/logo.png'), context);
    /// Turn off screen rotation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Data Asset',
      home: Scaffold(
        backgroundColor: Color.fromRGBO(249, 249, 249, 1.0),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(120.0, 60.0, 120.0, 10.0),
                    child: Image.asset('images/logo.png'),
                  ),
                  Text(
                    '#MyDataMyAsset',
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(45, 75, 92, 1.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 20.0),
                    padding: EdgeInsets.symmetric(vertical: 30.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 15.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 5.0),
                                    child: TextField(
                                      onChanged: (text) {
                                        email = text;
                                      },
                                      keyboardType: TextInputType.emailAddress,
                                      cursorColor:
                                          Color.fromRGBO(45, 75, 92, 1.0),
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 15.0),
                                        filled: true,
                                        fillColor:
                                            Color.fromRGBO(244, 246, 249, 1.0),
                                        hintText: 'Email',
                                        errorText: (validate[0])
                                            ? null
                                            : 'Field is empty',
                                        hintStyle: TextStyle(
                                          fontFamily: 'Open Sans',
                                          fontSize: 15.0,
                                          color:
                                              Color.fromRGBO(45, 75, 92, 1.0),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: BorderSide(
                                            color: Color.fromRGBO(
                                                244, 246, 249, 1.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: BorderSide(
                                            color: Color.fromRGBO(
                                                244, 246, 249, 1.0),
                                          ),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: BorderSide(
                                            color: Colors.redAccent,
                                          ),
                                        ),
                                      ),
                                      autofocus: false,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 5.0),
                                    child: TextField(
                                      onChanged: (text) {
                                        password = text;
                                      },
                                      obscureText: true,
                                      cursorColor:
                                          Color.fromRGBO(45, 75, 92, 1.0),
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 15.0),
                                        filled: true,
                                        fillColor:
                                            Color.fromRGBO(244, 246, 249, 1.0),
                                        hintText: 'Password',
                                        errorText: (validate[1])
                                            ? null
                                            : 'Field is empty',
                                        hintStyle: TextStyle(
                                          fontFamily: 'Open Sans',
                                          fontSize: 15.0,
                                          color:
                                              Color.fromRGBO(45, 75, 92, 1.0),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: BorderSide(
                                            color: Color.fromRGBO(
                                                244, 246, 249, 1.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: BorderSide(
                                            color: Color.fromRGBO(
                                                244, 246, 249, 1.0),
                                          ),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: BorderSide(
                                            color: Colors.redAccent,
                                          ),
                                        ),
                                      ),
                                      autofocus: false,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: InkWell(
                                          child: Text(
                                            '$message',
                                            style: TextStyle(
                                              fontFamily: 'Open Sans',
                                              fontSize: 12.0,
                                              color: Colors.red,
                                            ),
                                          ),
                                          onTap:
                                              () {} //Add link inside as onTap:(){launch('your link to wake up forgot password page )}
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: InkWell(
                                          child: Text(
                                            'Forgot Password?',
                                            style: TextStyle(
                                              fontFamily: 'Open Sans',
                                              fontSize: 12.0,
                                              color: Color.fromRGBO(
                                                  45, 72, 92, 1.0),
                                            ),
                                          ),
                                          onTap:
                                              () {
                                                
                                              } //Add link inside as onTap:(){launch('your link to wake up forgot password page )}
                                          ),
                                    ),
                                  ),
                                  SizedBox(height: 20.0),
                                  SizedBox(
                                    width: 300.0,
                                    height: 50.0,
                                    child: RaisedButton(
                                      padding: EdgeInsets.all(0.0),
                                      onPressed: () {
                                        setState(() {
                                          inputValidation();
                                        });
                                      },
                                      color: Color.fromRGBO(99, 203, 218, 1.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Text(
                                        'Login',
                                        style: TextStyle(
                                          fontFamily: 'Open Sans',
                                          fontSize: 15.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
