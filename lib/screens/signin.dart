import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/screens/signup.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Image.asset('assets/images/seen-logo-small.png'),
                ),
                Column(
                  children: <Widget>[
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(
                            'assets/images/seen-bg-signin.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 45.0),
                          child: Image.asset(
                            'assets/images/seen-people-signin.png',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text('Log In to Continue'),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Email',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Password',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width,
                      height: 45.0,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 20.0,
                        ),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Color(0xFFFC0A59),
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Don\'t have an account? '),
                        FlatButton(
                          padding: EdgeInsets.zero,
                          child: Text(
                            'Register here',
                            style: TextStyle(
                              color: Color(0xFFFC0A59),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUp()),
                            );
                          },
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
