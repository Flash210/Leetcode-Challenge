


void main(){


  print(romanToInt("CDXCVII"));
}


int romanToInt(String s ){


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