import 'package:flutter/material.dart';
import 'registerpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextFormField(
              keyboardType: TextInputType.emailAddress,
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Email',
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            new SizedBox(height: 15.0),
            new TextFormField(
              keyboardType: TextInputType.text,
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
            new SizedBox(height: 15.0),
            new Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
                onPressed: null,
                color: Colors.blueAccent,
                padding: EdgeInsets.all(12.0),
                child: Text('Login', style: TextStyle(color: Colors.black)),
              ),
            ),
            new FlatButton(
                onPressed: null,
                child: Text('Forgot password', style: TextStyle(color: Colors.black)),
            ),
            new FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                child: Text('Dont have an account  REGISTER!!!?',
                  style: TextStyle(color: Colors.black)),
            )
      ]
      ),
      )
    );
  }

}
