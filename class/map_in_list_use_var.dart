void clg(){
  int i = 0;

  var college = ["NSS",{"ECE":60,"EEE":50,"IC":40},"CET",{"EEE":60,"CE":50,"ME":80}];         
  var college2 = (["GEC",{"CHE":60,"CS":50,"PR":80}]);
  college.addAll(college2);
  print("$college \n");   

  for(i=0;i<6;i=i+2){             
    print("College names : ${college[i]}");
    print("dept of ${college[i]} ${college[i+1]} \n");
  }
  print(college);
}

void main(){
  clg();
  
}