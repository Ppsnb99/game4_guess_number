//ignor_for_flie: avoid_print

import 'dart:math';
import 'dart:io';

class Game{
  static List<int> myList = [];
  int? _answer;
  int guessCount = 0;
  
  
  Game({int maxRandom = 100}){
    var r = Random();
    _answer = r.nextInt(maxRandom) + 1;
  }
  
  //if guessCount is private
  
  /*int getCount(){
  return _guessCount;
  } */
  
  int doGuess(int num){
    //ทายถูก return 0
    //too high return 1
    //too low return -1
    guessCount++;
    if(num > _answer!){
      return 1;
    }else if (num < _answer!){
      return -1;
    }else{
      return 0;
    }
  }
   void DisplayResult(){
    print('You have played ${myList.length} game');
    for(var i=0; i < myList.length; i++){
      stdout.write('🚀 Game #${i+1}: ${myList[i]} guesses\n');
    }
   }
}