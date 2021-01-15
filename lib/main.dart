import 'package:flutter/material.dart';
import 'content.dart';
import 'questions_structure.dart';
import 'result_page.dart';

///This page displays the screen of questions and options to answer to the quiz,
///and all the interactions as well

void main() => runApp(MaterialApp(
  ///appropriate keys for routing to different screens
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

  @override
  Widget build(BuildContext context) {

    Quiz trivia = init();     ///run init() from content.dart file to create an object of Quiz class

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
        backgroundColor: Colors.red[600],
      ),
      ///display the body of that page
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget> [
            SizedBox( height: 60,),
            ///display the number of the current question
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
            ///display the current question
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
            ///display the dividing line between the question and the options for answer
            Divider(
              height: 60,
              color: Colors.grey[800],
              thickness: 1.0,
            ),
            ///display the first answer option
            InkWell(
              onTap: () {
                setState(() {
                  ///if the user tapped here and it's the correct answer to the current question
                  /// then increase the value of the number of correct answers
                  if(trivia.questions[currQuestion].rightAnswer==0)
                    Quiz.numOfRightAnswers++;
                  ///zero the number of the current question if we get to the last question (10)
                  ///and navigate to the result page
                  ///otherwise, increase number of the current question
                  if(currQuestion==9) {
                    currQuestion=0;
                    Navigator.pushNamed(context, '/ResultPage');
                  }
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
            ///display the second answer option
            InkWell(
              onTap: () {
                setState(() {
                  ///if the user tapped here and it's the correct answer to the current question
                  /// then increase the value of the number of correct answers
                  if(trivia.questions[currQuestion].rightAnswer==1)
                    Quiz.numOfRightAnswers++;
                  ///zero the number of the current question if we get to the last question (10)
                  ///and navigate to the result page
                  ///otherwise, increase number of the current question
                  if(currQuestion==9) {
                    currQuestion=0;
                    Navigator.pushNamed(context, '/ResultPage');
                  }
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
            ///display the third answer option
            InkWell(
              onTap: () {
                setState(() {
                  ///if the user tapped here and it's the correct answer to the current question
                  /// then increase the value of the number of correct answers
                  if(trivia.questions[currQuestion].rightAnswer==2)
                    Quiz.numOfRightAnswers++;
                  ///zero the number of the current question if we get to the last question (10)
                  ///and navigate to the result page
                  ///otherwise, increase number of the current question
                  if(currQuestion==9) {
                    currQuestion=0;
                    Navigator.pushNamed(context, '/ResultPage');
                  }
                  else  currQuestion++;
                });
              },
              child: SizedBox(
                width: 300,
                child: Container(
                  color: Colors.grey[400],
                  child: Center(
                    child: Text(
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

