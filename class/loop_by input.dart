import 'dart:io';

class Loop{
  int ?num1;
  int ?num2;
  int ?num3;
  int i = 0;

   void math(){
    for(i=0;i<=4;i++){
      print(i);
    }

   }
   void large(){
      stdout.write("enter first number :");
      print("enter first number :");
      int num1 = int.parse(stdin.readLineSync()!); //int.parse() use to convert to INT
      stdout.write("enter second number :");        // std.radlinesync for get input
      print("enter second number :");
      var num2 = int.parse(stdin.readLineSync()!);
      stdout.write("enter third number :");
      print("enter thiird number :");
      var num3 = int.parse(stdin.readLineSync()!);
      
      if(num1>num2&&num1>num3){
      
        print("large number is $num1");
        
      }

      else if(num2>num3&&num2>num1){
        
        print("large number is $num2");
        
      }

      else {
        print("large number is $num3");
      }

      
    }


  
}

void main(){
  Loop loop =Loop();
  loop..large()..math();

}