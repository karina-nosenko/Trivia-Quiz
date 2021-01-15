import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp( MaterialApp(
  routes: {
    '/':(context) => Result(),
    '/Home':(context) => Home(),
  },
));

class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Trivia Quiz',
            style: TextStyle(
              fontSize: 25,
              letterSpacing: 3,
              fontWeight: FontWeight.bold,
            )
        ),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget> [
            SizedBox( height: 60,),
            Center(
              child: Text(
                '',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize:25,
                ),
              ),
            ),
            SizedBox( height: 20,),
            Center(
              child: Text(
                'Result:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize:40,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Colors.black,
                ),
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[800],
            ),
            Center(
              child: Text(
                '8/10',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize:35,
                  letterSpacing: 2,
                ),
              ),
            ),
            SizedBox( height: 100,),
            FlatButton.icon(
              onPressed: () {
                //Navigator.popUntil(context,ModalRoute.withName('/Home'));
                Navigator.pushReplacementNamed(context, '/Home');
                //Navigator.pop(context);
              },
              icon: Icon(
                Icons.autorenew_outlined,
                color: Colors.blue[700],
                size: 30,
              ),
              label: Text(
                  'Try again',
                  style: TextStyle(
                    fontSize:30,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[700],
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}

