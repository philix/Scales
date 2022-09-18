boolean shift = true;
void setup(){
  size(1000,500);
  noLoop();
}

void draw(){
  for(int x = -50; x <= 1000; x+=40){
    for(int y = -120; y<= 500; y+=70){
      scales(x,y);
    }
  }

}

void scales(int x, int y){
      if(shift == true){
        int color1 = (int)(Math.random()*266);
        fill(x,y,color1);
        beginShape();
        curveVertex(100+x,y+70);
        curveVertex(100+x,80+y);
        curveVertex(70+x,130+y);
        curveVertex(0+x,180+y);
        curveVertex(70+x,230+y);
        curveVertex(100+x,260+y);
        curveVertex(100+x,260+y);
        endShape();
      }else{
        int color1 = (int)(Math.random()*266);
        fill(x,y,color1);
        beginShape();
        curveVertex(100+x,y+40);
        curveVertex(100+x,50+y);
        curveVertex(70+x,100+y);
        curveVertex(0+x,150+y);
        curveVertex(70+x,200+y);
        curveVertex(100+x,230+y);
        curveVertex(100+x,230+y);
        endShape();
      }
      if(shift == true){
        shift = false;
      }else{
        shift = true;
      }
    
}
