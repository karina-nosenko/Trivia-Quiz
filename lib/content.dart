import 'questions_structure.dart';


/*Initializing the quiz object*/
Quiz init(){

  Quiz trivia = Quiz(<Question>[Question('1What',<String>['1a','1b','1c'],2),
    Question('2What',<String>['2a','2b','2c'],2),
    Question('3What',<String>['3a','3b','3c'],2),
    Question('4What',<String>['4a','4b','4c'],2),
    Question('5What',<String>['5a','5b','5c'],2),
    Question('6What',<String>['6a','6b','6c'],2),
    Question('7What',<String>['7a','7b','7c'],2),
    Question('8What',<String>['8a','8b','8c'],2),
    Question('9What',<String>['9a','9b','9c'],2),
    Question('10What',<String>['10a','10b','10c'],2),]);

  return trivia;
}