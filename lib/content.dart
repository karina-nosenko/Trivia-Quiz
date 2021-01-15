import 'questions_structure.dart';


/*Initializing the quiz object*/
Quiz init(){

  Quiz trivia = Quiz(<Question>[
    Question('What was the original name for Facebook?',
        <String>['Thefacebook','Facepad','Friendster'],0),
    Question('Which country produces the most coffee?',
        <String>['Canada','Ireland','Brazil'],2),
    Question('Who was the first woman to win a Nobel Prize?',
        <String>['Donna Strickland','Marie Curie','Maria Mayer'],1),
    Question('What plant the Aztecs worshipped?',
        <String>['Squashe','Potato','Maize'],2),
    Question('Which nation invented hotdogs?',
        <String>['Croatia','Germany','Denmark'],1),
    Question('What is the largest desert on Earth?',
        <String>['Sahara','Arabian','Antarctica'],2),
    Question('What is the largest continent in the world?',
        <String>['Asia','Antarctica','Africa'],0),
    Question('Where did the band AC/DC originate?',
        <String>['USA','Australia','Scotland'],1),
    Question('How many Marvel Universe films are there?',
        <String>['21','22','23'],2),
    Question('Which river is the longest in the world?',
        <String>['The Nile','Yangtze','Amazon'],0),]);

  return trivia;
}