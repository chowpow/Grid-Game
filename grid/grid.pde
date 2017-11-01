int[][] board;
int cols, rows;
float cellWidth, cellHeight;

void setup() {
  size(800, 800);
  cols = 10;
  rows = 10;
  
  ellipseMode(CENTER);
  
  cellWidth = width / cols;
  cellHeight = height / rows;
  
  board = new int[cols][rows];
  
  randomize();
  
}

void draw() {
  displayBoard();
}

void displayBoard() {
  

  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {
      
      if (board[x][y] == 1) {
        //ellipse(float(board[x]), float(board[y]), cellWidth, cellHeight);
        
        ellipse(x*cellWidth, y*cellHeight, 80, 80);
      } else {
        fill(255);
      }
      rect(x*cellWidth, y*cellHeight, cellWidth, cellHeight);
    }
  }
}

void mousePressed() {
  int xCord = int(mouseX/cellWidth);
  int yCord = int(mouseY/cellHeight);
  
  if (board[xCord][yCord] == 1) {
    board[xCord][yCord] = 0;
  } else {
    board[xCord][yCord] = 1;
  }
}

void randomize() {
 
  
  for (int x=0; x < cols; x++) {
    for (int y=0; y < rows; y++) {
    }
  }
}
  
void keyPressed() {
  if (key == 'r') {
    board = new int[cols][rows];
  }
}
    
  
      
  