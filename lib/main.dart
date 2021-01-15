import 'package:flutter/material.dart';
import 'content.dart';
import 'questions_structure.dart';
import 'result_page.dart';

void main() => runApp(MaterialApp(
    routes: {
      '/':(context) => Home(),
      '/ResultPage':(context) => Result(),
    },
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currQuestion = 0;        ///indicate the current question (of ten)
  int numOfRightAnswers = 0;   ///count the correct answers

  @override
  Widget build(BuildContext context) {
    Quiz trivia = init();   ///run init() from content.dart file to create an object of Quiz class
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
                '${currQuestion+1}/10',
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
                trivia.questions[currQuestion].question,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize:39,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Colors.black,
                ),
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[800],
              thickness: 1.0,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  Navigator.pushReplacementNamed(context, '/ResultPage');
                  ///user tapped here and it's the correct answer to the current question:
                  ///increase the value of the number of correct answers
                  if(trivia.questions[currQuestion].rightAnswer==0)
                    numOfRightAnswers++;
                  if(currQuestion==9)  currQuestion=0;
                  else  currQuestion++;
                });
              },
              child: SizedBox(
                width: 300,
                child: Container(
                  color: Colors.grey[400],
                  child: Center(
                    child: Text(
                        trivia.questions[currQuestion].answers[0],
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
            ),
            InkWell(
              onTap: () {
                setState(() {
                  ///user tapped here and it's the correct answer to the current question:
                  ///increase the value of the number of correct answers
                  if(trivia.questions[currQuestion].rightAnswer==1)
                    numOfRightAnswers++;
                  if(currQuestion==9)  currQuestion=0;
                  else  currQuestion++;
                });
              },
              child: SizedBox(
                width: 300,
                child: Container(
                  color: Colors.grey[400],
                  child: Center(
                    child: Text(
                        trivia.questions[currQuestion].answers[1],
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
            ),
            InkWell(
              onTap: () {
                setState(() {
                  ///user tapped here and it's the correct answer to the current question:
                  ///increase the value of the number of correct answers
                  if(trivia.questions[currQuestion].rightAnswer==2)
                    numOfRightAnswers++;
                  if(currQuestion==9)  currQuestion=0;
                  else  currQuestion++;
                });
              },
              child: SizedBox(
                width: 300,
                child: Container(
                  color: Colors.grey[400],
                  child: Center(
                    child: Text(
                        //'a',
                        trivia.questions[currQuestion].answers[2],
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
            ),
          ],
        ),
      ),
    );
  }
}

