
///Here are classes for the structure of the question pages
///The Quiz built of 10 questions, while each question contains 3 answers
///There's only one right answer


/*Class of one question, that contains the question, list of the options for answers,
and index of the right answer from the answers list */
class Question{

  String question;         //the question
  List <String> answers;   //3 options for answer
  int rightAnswer;         //index of the right answer

  Question(String q, List a, int r){
    this.question = q;
    this.answers = a;
    this.rightAnswer = r;
  }
}

/*Class of the quiz, that contains a list of questions, and a static value
that counts the number of times the user choose the right answer*/
class Quiz{

  List <Question> questions;          //10 questions of the quiz
  static int numOfRightAnswers = 0;   //count the right answers

  Quiz(List q){
    this.questions = q;
  }
}

//Initializing the quiz object
void main(){

  Question q1 = Question('What',<String>['a','b','c'],0);
  Question q2 = Question('What',<String>['a','b','c'],0);
  Question q3 = Question('What',<String>['a','b','c'],0);
  Question q4 = Question('What',<String>['a','b','c'],0);
  Question q5 = Question('What',<String>['a','b','c'],0);
  Question q6 = Question('What',<String>['a','b','c'],0);
  Question q7 = Question('What',<String>['a','b','c'],0);
  Question q8 = Question('What',<String>['a','b','c'],0);
  Question q9 = Question('What',<String>['a','b','c'],0);
  Question q10 = Question('What',<String>['a','b','c'],0);

  Quiz trivia = Quiz(<Question>[q1,q2,q3,q4,q5,q6,q7,q8,q9,q10]);

}