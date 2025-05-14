import 'dart:io';
class Grade{

int i =0;
double ?std_mark;
  
  void mark_if_else(){

    for(i=1;i<=8;i++){

    stdout.write("mark of student $i:");
    double std_mark= double.parse(stdin.readLineSync()!);

      if(std_mark>=90&&std_mark<=100){
        print("A+");
      }
      else if(std_mark<90&&std_mark>=80){
        print("A");
      }
      else if(std_mark<80&&std_mark>=70){
        print("B+");
      }
      else if(std_mark<70&&std_mark>=60){
        print("B");
      }
      else if(std_mark<60&&std_mark>=50){
        print("C+");
      }
      else if(std_mark<50&&std_mark>=40){
        print("C");
      }
      else if(std_mark>100){
        print("Invalid entry");
      }
      else if(std_mark<0){
        print("Invalid entry");
      }
      else{
        print("Failed");
      }
    }
  }

  void mark_switch(){
    print("mark : ");
    double mark = double.parse(stdin.readLineSync()!);

    switch(mark){
      case 90:
      print("A+");
      break;

      case 80:
      print("A");
      break;

      case 70:
      print("B+");
      break;

      case 60:
      print("B");
      break;

      case 50:
      print("C+");
      break;
      
      case 40:
      print("C");
      break;

      default:
      print("F");

      

    }
  }
}

  void main(){
    Grade grade =Grade();
    grade..mark_if_else()..mark_switch();
    

  }
