//alle variabler er skaleret ned for at passe på skærmen!!!
//planet masser
float mMERKUR = 3.3011e2;
float mVENUS = 4.8675e2;
float mJORDEN = 5.972e2;
float mMARS = 6.417e2;

//tyngdekraft til planetter
float FMERKUR = 1.31e3;
float FVENUS = 5.52e2;
float FJORDEN = 3.54e2;
float FMARS = 1.63e2;

//konstanter
float G = 6.67430; //originalt 6.67430e-11
float M = 1.989e4; //masse til sol, originalt 1.989e30

float ellipseradius;
float m = mMERKUR; //programmet starter ved Merkur
float F = FMERKUR;

void setup() {
size(1920,1080);
textSize(20);
}

void draw() {
  background(0);
  
  ellipseradius = beregnEllipse(M,m,F);
  
  fill(255,255,0);
  ellipse(width/2,height/2,20,20); //solen
  
  noFill();
  stroke(255,255,255);
  ellipse(width/2,height/2,ellipseradius,ellipseradius*0.6);
  
  text("F = G*M*m/r^2     isoleret:     r = sqrt(G*M*m/F)", 10, 35); //viser formler på skærmen
  text("Ændre planet med taster: 1=Merkur, 2=Venus, 3=Jorden, 4=Mars",700,35); //info om skift af planetter
  text("Masser:  Merkur: 3.3011e23, Venus: 4.8675e24, Jorden: 5.972e24, Mars: 6.4171e23", 600, 1000);
}

float beregnEllipse(float M,float m,float F){
  float r= sqrt((G*M*m)/F); //isoleret for r
  return r;
}

void keyPressed(){
   if (key == '1') {
    m = mMERKUR;
    F = FMERKUR;
  } else if (key == '2') {
    m = mVENUS;
    F = FVENUS;
  } else if (key == '3') {
    m = mJORDEN;
    F = FJORDEN;
  } else if (key == '4') {
    m = mMARS;
    F = FMARS;
  }
}
