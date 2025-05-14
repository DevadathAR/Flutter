class Maths{
  var a;
  var b;
    void set(x,y){
      a = x;
      b = y;
    }
    
    void add(){
      print(a+b);
    }

}

void main(){

  Maths math = Maths();
  math.set(5,8);
  math.add();

  math..set(2,6)..add();
}