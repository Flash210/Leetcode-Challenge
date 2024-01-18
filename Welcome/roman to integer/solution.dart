


void main(){


  print(romanToIntOne("CDXC")); 
  // TC(n) where n is the length of the string 
  // SC(n ) because we use a data structure to store roman letters 
print(romanToIntgerTwo("CDXC"));
// SC(1) because we use only two constants 
  
}


int romanToIntOne(String s ){

int value = 0;

Map<String , int> map={
'I':1,
'V':5,
'X':10,
'L':50,
'C':100,
'D':500,
'M':1000
};

for ( int i =0;i<s.length;i++){

  if ( i <s.length -1 && map[s[i]]!  < map[s[i+1]]!)
  value-=map[s[i]]!;
  else 
    value+=map[s[i]]!;


}

  return value ; 
}


// ************************************* solution 2 
int romanToIntgerTwo(String s){
  int value =0;
  int num =0;

   for (String  c in s.split('').reversed) {
    switch(c ){
 case 'I': num = 1; break;
                case 'V': num = 5; break;
                case 'X': num = 10; break;
                case 'L': num = 50; break;
                case 'C': num = 100; break;
                case 'D': num = 500; break;
                case 'M': num = 1000; break;

    }
    if ( value >4*num )
    value-=num;
    else 
    value+=num;
    
  }

  return value ; 
}