// Matriculation Number : 11011853, Name : SANJAY RAJU SUDARSHANA RAJU

String [] signature1 = loadStrings("U1S12.TXT");               //Defining a variable and loading the strings from the first text file
String [] signature2 = loadStrings("U1S23.TXT");               //Defining a variable and loading the strings from the second text file

ArrayList<Integer> xs1 = new ArrayList<Integer>(); ArrayList<Integer> ys1 = new ArrayList<Integer>();     //Defining arrays to store the x and y co-ordinates from first text file
ArrayList<Integer> xs2 = new ArrayList<Integer>(); ArrayList<Integer> ys2 = new ArrayList<Integer>();     //Defining arrays to store the x and y co-ordinates from second text file

// retrive and store x and y into an array from signature1
int index1  = 1;                                             
while(index1 < signature1.length){
  String[] coordinates = split (signature1[index1], ' ');
  if (coordinates.length >= 2){
    int x = int(coordinates[0]);
    int y = int(coordinates[1]);
    
    xs1.add(x);
    ys1.add(y);
  }
    index1++;
}
//println("X_coordinates : \n" + xs1 + "\n"); println("Y_coordinates : \n" + ys1 + "\n");

// retrive and store x and y into an array from signature2
int index2  = 1;
while(index2 < signature2.length){
  String[] coordinates = split (signature2[index2], ' ');
  if (coordinates.length >= 2){
    int x = int(coordinates[0]);
    int y = int(coordinates[1]);
    
    xs2.add(x);
    ys2.add(y);
  }
    index2++;
}
//println("X_coordinates1 : \n" + xs2 + "\n"); println("Y_coordinates1 : \n" + ys2 + "\n");

//Finding maxima and minima between the adjacent co-ordinates for first and second signature
//Declaring the arrays to store and assign max/min values for first and second signature
ArrayList<String> xExtrema1 = new ArrayList<String>(); ArrayList<String> yExtrema1 = new ArrayList<String>();
ArrayList<String> xExtrema2 = new ArrayList<String>(); ArrayList<String> yExtrema2 = new ArrayList<String>();

//Finding the max/min values amongst x and y coordinates

//For the xcoordinates
for( int i = 0; i < xs1.size(); i++){
  if(i == 0){
    if(xs1.get(i) > xs1.get(i+1)) xExtrema1.add("max");
    else if(xs1.get(i) < xs1.get(i+1)) xExtrema1.add("min");
    else xExtrema1.add("null");
  }
else if( i == xs1.size() - 1){
  if(xs1.get(i) > xs1.get(i-1)) xExtrema1.add("max");
  else if(xs1.get(i) < xs1.get(i-1)) xExtrema1.add("min");
  else xExtrema1.add("null");
}
else{
  if(xs1.get(i) > xs1.get(i-1) && xs1.get(i) > xs1.get(i+1)) xExtrema1.add("max");
  else if(xs1.get(i) < xs1.get(i-1) && xs1.get(i) < xs1.get(i+1)) xExtrema1.add("min");
  else xExtrema1.add("null");
}
}

//For the ycoordinates
for( int i = 0; i < ys1.size(); i++){
  if(i == 0){
    if(ys1.get(i) > ys1.get(i+1)) yExtrema1.add("max");
    else if(ys1.get(i) < ys1.get(i+1)) yExtrema1.add("min");
    else yExtrema1.add("null");
  }
else if( i == ys1.size() - 1){
  if(ys1.get(i) > ys1.get(i-1)) yExtrema1.add("max");
  else if(ys1.get(i) < ys1.get(i-1)) yExtrema1.add("min");
  else yExtrema1.add("null");
}
else{
  if(ys1.get(i) > ys1.get(i-1) && ys1.get(i) > ys1.get(i+1)) yExtrema1.add("max");
  else if(ys1.get(i) < ys1.get(i-1) && ys1.get(i) < ys1.get(i+1)) yExtrema1.add("min");
  else  yExtrema1.add("null"); 
}
}

for( int j = 0; j < xs2.size(); j++){
  if(j == 0){
    if(xs2.get(j) > xs2.get(j+1)) xExtrema2.add("max");
    else if(xs2.get(j) < xs2.get(j+1)) xExtrema2.add("min");
    else xExtrema2.add("null");
  }
else if( j == xs2.size() - 1){
  if(xs2.get(j) > xs2.get(j-1)) xExtrema2.add("max");
  else if(xs2.get(j) < xs2.get(j-1)) xExtrema2.add("min");
  else xExtrema2.add("null");
}
else{
  if(xs2.get(j) > xs2.get(j-1) && xs2.get(j) > xs2.get(j+1)) xExtrema2.add("max");
  else if(xs2.get(j) < xs2.get(j-1) && xs2.get(j) < xs2.get(j+1)) xExtrema2.add("min");
  else xExtrema2.add("null");
}
}

for( int j = 0; j < ys2.size(); j++){
  if(j == 0){
    if(ys2.get(j) > ys2.get(j+1)) yExtrema2.add("max");
    else if(ys2.get(j) < ys2.get(j+1)) yExtrema2.add("min");
    else yExtrema2.add("null");
  }
else if( j == ys2.size() - 1){
  if(ys2.get(j) > ys2.get(j-1)) yExtrema2.add("max");
  else if(ys2.get(j) < ys2.get(j-1)) yExtrema2.add("min");
  else yExtrema2.add("null");
}
else{
  if(ys2.get(j) > ys2.get(j-1) && ys2.get(j) > ys2.get(j+1)) yExtrema2.add("max");
  else if(ys2.get(j) < ys2.get(j-1) && ys2.get(j) < ys2.get(j+1)) yExtrema2.add("min");
  else  yExtrema2.add("null"); 
}
}

 // Max/Min comparison for different combinations to obtain string 
       //  Declaration of the array to store the string result

ArrayList<String> sign1_Ext = new ArrayList<String>();
ArrayList<String> sign2_Ext = new ArrayList<String>();
int xMaxMin = xExtrema1.size();
int yMaxMin = xExtrema2.size();

for( int i = 0; i < xMaxMin; i++){
  String res1 = "";
  
  if (xExtrema1.get(i) == "min"  && yExtrema1.get(i) == "null") {res1 = res1 + 'a'; sign1_Ext.add(res1);}
  if (xExtrema1.get(i) == "max"  && yExtrema1.get(i) == "null") {res1 = res1 + 'b'; sign1_Ext.add(res1);}
  if (xExtrema1.get(i) == "null" && yExtrema1.get(i) == "min")  {res1 = res1 + 'c'; sign1_Ext.add(res1);}
  if (xExtrema1.get(i) == "null" && yExtrema1.get(i) == "max")  {res1 = res1 + 'd'; sign1_Ext.add(res1);}
  if (xExtrema1.get(i) == "min"  && yExtrema1.get(i) == "min")  {res1 = res1 + 'e'; sign1_Ext.add(res1);}
  if (xExtrema1.get(i) == "min"  && yExtrema1.get(i) == "max")  {res1 = res1 + 'f'; sign1_Ext.add(res1);}
  if (xExtrema1.get(i) == "max"  && yExtrema1.get(i) == "min")  {res1 = res1 + 'g'; sign1_Ext.add(res1);}
  if (xExtrema1.get(i) == "max"  && yExtrema1.get(i) == "max")  {res1 = res1 + 'h'; sign1_Ext.add(res1);}
  else    noLoop();
}

for( int j = 0; j < yMaxMin; j++){
  String res2 = "";
  
  if (xExtrema2.get(j) == "min"  && yExtrema2.get(j) == "null") {res2 = res2 + 'a'; sign2_Ext.add(res2);}
  if (xExtrema2.get(j) == "max"  && yExtrema2.get(j) == "null") {res2 = res2 + 'b'; sign2_Ext.add(res2);}
  if (xExtrema2.get(j) == "null" && yExtrema2.get(j) == "min")  {res2 = res2 + 'c'; sign2_Ext.add(res2);}
  if (xExtrema2.get(j) == "null" && yExtrema2.get(j) == "max")  {res2 = res2 + 'd'; sign2_Ext.add(res2);}
  if (xExtrema2.get(j) == "min"  && yExtrema2.get(j) == "min")  {res2 = res2 + 'e'; sign2_Ext.add(res2);}
  if (xExtrema2.get(j) == "min"  && yExtrema2.get(j) == "max")  {res2 = res2 + 'f'; sign2_Ext.add(res2);}
  if (xExtrema2.get(j) == "max"  && yExtrema2.get(j) == "min")  {res2 = res2 + 'g'; sign2_Ext.add(res2);}
  if (xExtrema2.get(j) == "max"  && yExtrema2.get(j) == "max")  {res2 = res2 + 'h'; sign2_Ext.add(res2);}
  else    noLoop();
}
println("Signature converted string value\n"+sign1_Ext+ "\n");
println("Signature converted string value\n"+sign2_Ext+ "\n");

//Calculate Levenshtein Edit Distance

String str_sign1_Ext = sign1_Ext.toString();
String str_sign2_Ext = sign2_Ext.toString();

  int m = str_sign1_Ext.length();
  int n = str_sign2_Ext.length(); 
  
  int[][] minDistance = new int [m+1][n+1];
  
  for(int i = 0; i <= m; i++){
    minDistance[i][0] = i;
  }
  for(int j = 0; j <= n; j++){
    minDistance[0][j] = j;
  }
   //iterate through, and check last char
  for(int i = 0; i < m; i++){
    char ch1 = str_sign1_Ext.charAt(i);
  for(int j = 0; j < n; j++){
    char ch2 = str_sign2_Ext.charAt(j);
    
    if(ch1 == ch2){
       //update minDistance value for +1 length
      minDistance[i+1][j+1] = minDistance[i][j];
    }else{
      int delete;
      int insert;
      int substitute;
      
      substitute = minDistance[i][j]   + 1;
      insert     = minDistance[i][j+1] + 1;
      delete     = minDistance[i+1][j] + 1;
      
      int minimum               = substitute > insert  ? insert  : substitute;
          minimum               = delete     > minimum ? minimum : delete;
          minDistance[i+1][j+1] = minimum;
    }
  }
  }
  
  float minDistance_value = minDistance[m][n];
  println("Minimum Edit Distance : " + minDistance_value + "\n");
  float Norm_value = (minDistance_value) / (str_sign1_Ext.length() + str_sign2_Ext.length());
  println("Normalized Value : " + Norm_value);
  
  
  
  
