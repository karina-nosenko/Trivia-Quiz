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

  List <Question> questions = [];         //10 questions of the quiz
  static int numOfRightAnswers = 0;       //count the correct answers

  Quiz(List q){
    this.questions = q;
  }
}