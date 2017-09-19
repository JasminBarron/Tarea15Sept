ArrayList <particula> particulas; //declaro arreglo que va a almecanar mis particulas

void setup (){
  size (400,400);
  particulas= new ArrayList <particula>(); //ArrayList es un objeto
  for (int i = 0; i<300; i++){
    /*float xp = random(400);
    float yp = random(400);
    float vp = random(4);
    float ap = random(TWO_PI); //representaban los angulos es la vuelta completa del circulo
    float tp = random(1,20);
    color cp= color(random(255),random(255),random(255));*/
    //particula p = new particula (xp,yp,vp,ap,tp,cp);
    particulas.add(new particula());
  }
}


void draw (){
  background(0);
  
  for (particula p : particulas ){ //para todas mis particulas, llamale su funcion display
    p.display();
    p.movimiento();
  } 
}

void mousePressed (){ //sucede unicamente en lo que presiono el mouse
  particula foo = new particula(mouseX,mouseY);
  particulas.add(foo);
}

class particula {
  float x,y,v,a,t;
  color c;
  
  particula (float x_, float y_, float v_, float a_, float t_, color c_){
  x= x_;
  y= y_;
  v= v_;
  a= a_;
  t= t_;
  c= c_;
}
 particula (){
   x = random (400); 
   y = random (400);
   v = random (10);
   a = random (TWO_PI);
   t = random (1,30);
   c = color (random(255),random(255),random (255));
   
 }
 particula (float x_,float y_){
   x = x_; 
   y = y_;
   v = random (10);
   a = random (TWO_PI);
   t = random (1,30);
   c = color (random(255),random(255),random (255));
 }
 

void display (){
  pushMatrix();
  translate(x,y);
  noStroke();
  fill (c);
  ellipse (0,0,t,t);
  popMatrix();
}
void movimiento (){
  x += v/-a;
  y += -a/v;
  /*x += random(-2,2);
  y += random(-2,2);*/
}

}

//githup utilizando la trigonometria poner la particula en cierto punto utilizando x,y,angulo, velocidad y direccion