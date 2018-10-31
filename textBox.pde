class TextBox {
  float posX;
  float posY;
  float wdth;
  float hght;
  boolean selected = true;
  

  float pt = 16;
  float leading;
  float leadingPercentile = 1.4;
  int numRows;
  int numCols = 1;
  float gutter = 0;
  boolean hypenate = false;
  boolean showBaseline = true;
  color baselineColor = color(50, 150, 250);

  String content = "";

  Cursor cursor;

  TextBox(float tX, float tY, float tW, float tH) {

    posX = tX;
    posY = tY;
    wdth = tW;
    hght = tH;
    
    numRows  = floor(hght / leading);
    setLeading(leadingPercentile);

    cursor = new Cursor();
  }

  void display() {
    
    if (showBaseline) drawBaseline();
  }

  void expectInput() {
    if (keyPressed) { 
      if (keyCode == BACKSPACE) {
        if (content.length() > 0) {
          content = content.substring(0, content.length()-1);
          delay(100);
        }
      } else if (keyCode == DELETE) {
        content = "";
      } else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT) {
        content += key;
        delay(100);
      }
    }
  }
  
  void setPt(float p) {
    pt = p;
    setLeading(leadingPercentile);
  }

  void setLeading(float l) {
    leadingPercentile = l;
    leading = pt * leadingPercentile;
  }
  
  void drawBaseline() {   
    fill(baselineColor);
    for (int r = numRows; r > 0; r--) {
      float rowY = posY + leading*r;
      line(posX, rowY, posX + wdth, rowY);
    }
    
  }

  class Cursor {
    float x = posX;
    float y = posY + leading;
    float h = pt;
    float w = 3;

    Cursor() {
    }

    void write() {
      
    }
    
    Row[] processContent() {
      Row[] rows = new Row[numRows];
      ArrayList<Word> wordsInRow = new ArrayList<Word>();
      ArrayList<Letter> lettersInWord = new ArrayList<Letter>();
      
      // Add whole mechanism for chopping content string and think up a way to store and pass leftovers
      
      return rows;
    }
  }
  
  
  
}
