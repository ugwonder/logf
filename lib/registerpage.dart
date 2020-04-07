import 'package:flutter/material.dart';
import 'main.dart';


// ignore: must_be_immutable
class RegisterPage extends StatelessWidget {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.person,
              color: Colors.black,
              size: 150.0,
            ),
            SizedBox(height: 25.0),
            new TextFormField(
              keyboardType: TextInputType.text,
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Name',
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            new SizedBox(height: 10),
            new TextFormField(
              keyboardType: TextInputType.text,
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Username',
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            new SizedBox(height: 10),
            new TextFormField(
              keyboardType: TextInputType.emailAddress,
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Email',
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            new SizedBox(height: 10),
            new TextFormField(
              keyboardType: TextInputType.visiblePassword,
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Password',
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    semanticLabel: _obscureText ? 'show password' : 'hide password',
                  ),
                ),
              ),
            ),
            new SizedBox(height: 10),
            new TextFormField(
              keyboardType: TextInputType.visiblePassword,
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Confirm password',
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    semanticLabel: _obscureText ? 'show password' : 'hide password',
                  ),
                ),
              ),
            ),
            new SizedBox(height: 15.0),
            new Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: new RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
                onPressed: (){
                  Navigator.pop(context, MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
                color: Colors.blueAccent,
                padding: EdgeInsets.all(12.0),
                child: Text('Create account and login', style: TextStyle(color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {

  }
}
