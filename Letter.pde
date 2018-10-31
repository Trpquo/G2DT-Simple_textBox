class Letter {
    
    PFont font;
    float fontSize;
    color col;
    float x;
    float y;
    boolean selected = false;
    char character;
    float wdth;
    
    Letter (char ch, PFont f, float s, color c, float tx, float ty) {
      character = ch;
      font = f;
      fontSize = s; 
      col = c;
      x = tx;
      y = ty;
      
      textFont(font);
      textSize(fontSize);
      wdth = textWidth(character);
    }
    
    void display() {
      textFont(font);
      textSize(fontSize);
      fill(col);
      text(character, x, y);
    }
  }
