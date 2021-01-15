import 'package:flutter/material.dart';
import 'questions_structure.dart';

///This page displays the result of the quiz:
///the number of right answers the user did.
///And also has an option to start the quiz over

class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      ///display the top bar of that page
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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red[600],
      ),
      ///display the body of that page
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget> [
            SizedBox( height: 105,),
            ///display the header "Result"
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
            ///display the dividing line between the header and the result of the quiz
            Divider(
              height: 60,
              color: Colors.grey[800],
              thickness: 1.0,
            ),
            ///display the number of right answers the user did
            Center(
              child: Text(
                '${Quiz.numOfRightAnswers}/10',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize:35,
                  letterSpacing: 2,
                ),
              ),
            ),
            SizedBox( height: 100,),
            ///display button to start the quiz over
            FlatButton.icon(
              onPressed: () {
                Quiz.numOfRightAnswers=0; ///zero the number of right answers before returning
                Navigator.pop(context);
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

