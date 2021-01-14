import 'package:flutter/material.dart';
import 'questions.dart';

void main() => runApp(MaterialApp(
    home: Home()
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currQuestion = 0;

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if(currQuestion==10)  currQuestion=0;
            currQuestion++;
          });
        },
        child: Icon(Icons.add),
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
                '$currQuestion/10',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize:25,
                  letterSpacing: 2,
                ),
              ),
            ),
            SizedBox( height: 20,),
            Center(
              child: Text(
                'What is the Question?',
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
            SizedBox(
              width: 300,
              child: Container(
                color: Colors.grey[400],
                child: Center(
                  child: Text(
                      'First',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize:30,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      )
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              ),
            ),
            SizedBox(
              width: 300,
              child: Container(
                color: Colors.grey[400],
                child: Center(
                  child: Text(
                      'Second',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize:30,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      )
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              ),
            ),
            SizedBox(
              width: 300,
              child: Container(
                color: Colors.grey[400],
                child: Center(
                  child: Text(
                      'Third',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize:30,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      )
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

