import 'package:flutter/material.dart';
import 'package:my_app/images.dart';
import 'package:my_app/screens/signin.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/seen-logo.png',
                height: 60,
                width: 74,
              ),
              Text(
                'seen.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 66.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 20,
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
                    color: Colors.black,
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                      );
                    },
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
