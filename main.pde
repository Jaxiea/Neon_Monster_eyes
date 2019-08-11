float x = 50.0;
float y;
float i = 0;   //color
float j = 2;
float k = 0;
float l = 0;
boolean o = true;
float degree = 0.0;
float z = -300;
float xx = 1.0;

void setup(){
  size(700, 700, P3D);
  background(0);
  smooth();
}

void draw(){
  
// neon_strobe();
 

 translate(0, 0, 450);
 //rotateX(radians(-xx/5));
 //rotateZ(radians(xx/0.8));
 rotateY(radians(xx));
 neon_strobe();
 xx += 80;     //80, 90 are whole

 // saveFrame("output/neon_eye.png");
 
}

void neon_strobe(){
  
  if (o == true){
    noFill();
    beginShape();
      stroke(i, k, l); // (0, 0, 0)  --> (255, 255, 255)
      strokeWeight(j);
      vertex(width/2 + x, 0);
     
      bezierVertex(width/2 + x - 100, height/2, width/2 + x + 300, height/2, width/2 + x, height);

    endShape();
  
  if (l < 255){
    l += 1;
  }
  if (i < 212){
    i += 0.83;
  }
  if (i > 211 && l > 254 && k < 255){
    i += 0.17;
    k += 1;
  }
  
  if (k < 255){
  x += 0.05;
  y = sin(radians(degree))*25;
  }
  
 //  j += 0.01;
  
//  print(i, k, l, "\n");
  
  if (i >= 255 && k >= 255 && l >= 255){
    o = false;
    print(o);
  }
  }
  else{
    noFill();
    beginShape();
    stroke(i, k, l);  //(255, 255, 255)
    strokeWeight(j);
    vertex(width/2 + x, 0);

     bezierVertex(width/2 + x - 40, height/2, width/2 + x + 400, height/2, width/2 + x, height);
      
    endShape();
  
  if (i > 0){
    i -= 0.17;
    k -= 1;
  }
  
  if (k < 1 && i < 211 && l > 0){
    i -= 0.83;
    l--;
  }
  
  if (l > 0){
  x += 0.05;
  y = sin(radians(degree)) * 25;
  }
    
  //  j -= 0.01;
    
  }
  
  if (degree < 180){
  degree += 0.18;
  //print(y, "\n");
  }

 // if (i <= 0 && k <= 0 && l <= 0){
 //   o = true;
  //  print(o);
   // background(0);
 // }
  
}
