import 'package:flutter/material.dart';
import 'package:my_app/screens/signin.dart';

enum Gender { Male, Female }

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Gender _gender;
  TextEditingController dateCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => SignIn()),
                );
              },
            ),
            title: Text(
              'Registration',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            centerTitle: false,
          ),
          body: Column(
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'First Name',
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Last Name',
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Gender',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Radio(
                      onChanged: (Gender value) {
                        setState(() {
                          _gender = value;
                        });
                      },
                      groupValue: _gender,
                      value: Gender.Male,
                      toggleable: false,
                      activeColor: Color(0xFFFC0A59),
                    ),
                    Text(
                      'Male',
                      style: TextStyle(color: Colors.black54),
                    ),
                    Radio(
                      onChanged: (Gender value) {
                        setState(() {
                          _gender = value;
                        });
                      },
                      groupValue: _gender,
                      value: Gender.Female,
                      toggleable: true,
                      activeColor: Color(0xFFFC0A59),
                    ),
                    Text(
                      'Female',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: dateCtl,
                  decoration: InputDecoration(
                    hintText: 'Birthday',
                  ),
                  onTap: () async {
                    DateTime date = DateTime(1990);
                    FocusScope.of(context).requestFocus(new FocusNode());

                    date = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now());

                    dateCtl.text = "${date.day}-${date.month}-${date.year}";
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//              CalendarDatePicker(
//                initialDate: DateTime.now(),
//                firstDate: DateTime(1900, 1, 1),
//                lastDate: DateTime.now(),
//                onDateChanged: (DateTime value) {},
//              ),
