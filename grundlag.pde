//alle variabler er skaleret ned for at passe på skærmen!!!
float G = 6.67430; //originalt 6.67430e-11
float M= 1.989e4; //eksempel masse til sol, originalt 1.989e30
float m= 5.972e2; //eksempel masse til planet, originalt 5.972e24
float F= 28.22; //eksempel tyngdekraft imellem
float ellipseradius;


void setup() {
size(1920,1080);
ellipseradius = beregnEllipse(M,m,F);

}

void draw() {
  background(0);
  fill(255,255,0);
  ellipse(width/2,height/2,20,20); //solen
  
  noFill();
  stroke(255,255,255);
  ellipse(width/2,height/2,ellipseradius,ellipseradius*0.6);
  
  text("F = G*M*m/r^2     isoleret:     r = sqrt(G*M*m/F)", 10, 380); //viser formler på skærmen
}

float beregnEllipse(float M,float m,float F){
  float r= sqrt((G*M*m)/F); //isoleret for r
  return r;
}
