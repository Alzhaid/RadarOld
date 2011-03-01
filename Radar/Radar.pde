/*
28feb: draw n circles
1mar: draw some coloured points
*/

void setup() {
 int iWindowWidth = 600;
 int iWindowHeight = 600;
 int iCenterX = iWindowWidth / 2;
 int iCenterY = iWindowHeight / 2;
 
 int iNumCircles = 3;
 int iWidthIncrement = iWindowWidth / iNumCircles;
 
 size(iWindowWidth, iWindowHeight);
 
 /* Circles */
 int iCurrentWidth = iWidthIncrement;
 noFill();
 for (int i = 0; i < iNumCircles; i++) {
    ellipse(iCenterX,iCenterY,iCurrentWidth,iCurrentWidth);
    iCurrentWidth += iWidthIncrement;
 }
 
 /* Points */
 int iPointDiameter = 10;
 fill(255,0,0);
 ellipse(iCenterX + 30,iCenterY - 40,iPointDiameter, iPointDiameter);
 ellipse(iCenterX + 40,iCenterY - 100,iPointDiameter, iPointDiameter);
 fill(0,255,0);
 ellipse(iCenterX - 100, iCenterY +100, iPointDiameter, iPointDiameter); 
} 
