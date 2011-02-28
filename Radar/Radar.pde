/*
28feb: draw n circles
*/

void setup() {
 int iWindowWidth = 400;
 int iWindowHeight = 400;
 int iCenterX = iWindowWidth / 2;
 int iCenterY = iWindowHeight / 2;
 
 int iNumCircles = 3;
 int iWidthIncrement = iWindowWidth / iNumCircles;
 
 size(iWindowWidth, iWindowHeight);
 
 int iCurrentWidth = iWidthIncrement;
 noFill();
 for (int i = 0; i < iNumCircles; i++) {
    ellipse(iCenterX,iCenterY,iCurrentWidth,iCurrentWidth);
    iCurrentWidth += iWidthIncrement;
 }
} 
