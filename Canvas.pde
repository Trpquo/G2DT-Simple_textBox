class Canvas {
  String formatName = "A4";
  float[] formatDimentions = new float[2]; 
  float posX;
  float posY;
  float wdth;
  float hght;

  float marginTop;
  float marginBottom;
  float marginLeft;
  float marginRight;

  color paperTint = color(225, 225, 200);
  color guidelineColor = color (150, 50, 0);
  boolean showGuides = true;
  
  TextBox tBlock;
  

  Canvas(String f) {
    formatDimentions = getFormatDimensions(f);
    
    wdth = formatDimentions[0];
    hght = formatDimentions[1];
    
    posX = (width - wdth) / 2;
    posY = 100;
    
    marginTop = hght/16;
    marginBottom = hght/10;
    marginLeft = wdth/10;
    marginRight = wdth/10;
    
    tBlock = new TextBox(posX + marginLeft, posY + marginTop, wdth - marginLeft - marginRight, hght - marginTop - marginBottom);
    
  }

  void display() {
    
    fill(paperTint);
    rect(posX, posY, wdth, hght);
    
    tBlock.display();
    
    if (showGuides) {
      drawGuidelines();
    }
  
  }
  
  void expectInput() {
  
  }


  float[] getFormatDimensions(String f) {
    float[] dim = new float[2];
    float pspt = 0.35277777;
    switch (f.toUpperCase()) {
      case "A5":  
        dim[0] = 148.5 / pspt;
        dim[1] = 210 / pspt;
        break;
      case "A4":  
        dim[0] = 210 / pspt;
        dim[1] = 297 / pspt;
        break;
      case "A3":  
        dim[0] = 297 / pspt;
        dim[1] = 420 / pspt;
        break;
      default: 
        dim[0] = 400;
        dim[1] = 400;
        break;
    }
    return dim;
  }
  
  void drawGuidelines() {   
    float leftEdge = posX + marginLeft;
    float rightEdge = posX + wdth - marginLeft;
    float topEdge = posY + marginTop;
    float bottomEdge = posY + hght - marginBottom;
    
    stroke(guidelineColor);
    
    line(posX, topEdge, posX + wdth, topEdge);
    line(posX, bottomEdge, posX + wdth, bottomEdge);
    line(leftEdge, posY, leftEdge, posY + hght);
    line(rightEdge, posY, rightEdge, posY + hght);    
  }
  
  
}
