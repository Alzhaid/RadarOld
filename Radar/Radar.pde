 int iMouseArea = 20;
 boolean bover = false;
 int iWindowWidth = 600;
 int iWindowHeight = 600;
 int iCenterX = iWindowWidth / 2;
 int iCenterY = iWindowHeight / 2;
 
 //For an example point
 int iPointX = iCenterX - 100;
 int iPointY = iCenterY + 100;

void setup() {
 
 size(iWindowWidth, iWindowHeight);

}

void draw() {
  
  drawBackground(3);
  drawPoints();
  
  /* Mouse */  
  if (mouseX > iPointX-iMouseArea && mouseX < iPointX+iMouseArea && 
      mouseY > iPointY-iMouseArea && mouseY < iPointY+iMouseArea) {
    bover = true;
  } else {
    bover = false;
  }
  if (bover) {
    fill(0,0,255);
    ellipse(iCenterX, iCenterY, 100, 100);
  }
}

void drawBackground(int iNumCircles) {
  
 background(230);
 int iWidthIncrement = iWindowWidth / iNumCircles;
 /* Circles */
 int iCurrentWidth = iWidthIncrement;
 noFill();
 for (int i = 0; i < iNumCircles; i++) {
    ellipse(iCenterX,iCenterY,iCurrentWidth,iCurrentWidth);
    iCurrentWidth += iWidthIncrement;
 }
 
}

void drawPoints() {
 
 /* Points */
 int iPointDiameter = 10;
 fill(255,0,0);
 ellipse(iCenterX + 30,iCenterY - 40,iPointDiameter, iPointDiameter);
 ellipse(iCenterX + 40,iCenterY - 100,iPointDiameter, iPointDiameter);
 fill(0,255,0);
 ellipse(iPointX, iPointY, iPointDiameter, iPointDiameter); 
  
}
