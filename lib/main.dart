import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:my_app/screens/signin.dart';
import 'package:my_app/screens/welcome.dart';

void main() => runApp(MaterialApp(
      home: Welcome(),
    ));

//final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
//final GoogleSignIn googleSignIn = GoogleSignIn();
//
//_signInWithGoogle() async {
//  final GoogleSignInAccount googleUser = await googleSignIn.signIn();
//  final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
//
//  final AuthCredential credential = GoogleAuthProvider.getCredential(
//      idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);
//
//  final FirebaseUser user =
//      (await firebaseAuth.signInWithCredential(credential)).user;
//}

//class HomePage extends StatefulWidget {
//  @override
//  _HomePageState createState() => _HomePageState();
//}
//class _HomePageState extends State<HomePage> {
//  Color primaryColor = Color(0xff18203d);
//  Color secondaryColor = Color(0xff232c51);
//  Color logoGreen = Color(0xff25bcbb);
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: primaryColor,
//      body: Container(
//        margin: EdgeInsets.symmetric(
//          horizontal: 40,
//        ),
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Image.asset(
//              'assets/images/splash-image.png',
//              height: 250,
//            ),
//            SizedBox(
//              height: 20,
//            ),
//            Text(
//              'Welcome to TGD!',
//              textAlign: TextAlign.center,
//              style: TextStyle(
//                color: Colors.white,
//                fontSize: 28,
//              ),
//            ),
//            SizedBox(
//              height: 20,
//            ),
//            Text(
//              'A one-stop portal for you to learn the latest technologies from SCRATCH',
//              textAlign: TextAlign.center,
//              style: TextStyle(
//                color: Colors.white,
//                fontSize: 16,
//              ),
//            ),
//            SizedBox(
//              height: 30,
//            ),
//            MaterialButton(
//              elevation: 0,
//              height: 50,
//              onPressed: () {
//                Navigator.push(
//                    context, MaterialPageRoute(builder: (_) => LoginScreen()));
//              },
//              color: logoGreen,
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  Text(
//                    'Get Started',
//                    style: TextStyle(
//                      color: Colors.white,
//                      fontSize: 20,
//                    ),
//                  ),
//                  Icon(Icons.arrow_forward_ios),
//                ],
//              ),
//              textColor: Colors.white,
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//
//
//}
