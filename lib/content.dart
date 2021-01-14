import 'questions_structure.dart';


/*Initializing the quiz object*/
Quiz init(){

  Quiz trivia = Quiz(<Question>[Question('What',<String>['a','b','c'],2),
    Question('1What',<String>['a','b','c'],2),
    Question('2What',<String>['a','b','c'],2),
    Question('3What',<String>['a','b','c'],2),
    Question('4What',<String>['a','b','c'],2),
    Question('5What',<String>['a','b','c'],2),
    Question('6What',<String>['a','b','c'],2),
    Question('7What',<String>['a','b','c'],2),
    Question('8What',<String>['a','b','c'],2),
    Question('9What',<String>['a','b','c'],2),]);

  return trivia;
}