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
      rect(x*cellWidth, y*cellHeight, cellWidth, cellHeight);
      
      if (board[x][y] == 1) { 
        fill(1);
        ellipse(x*cellWidth+cellWidth/2, y*cellHeight+cellHeight/2, 70, 70);
        
      } else {
        fill(255);
      }
      
    }
  }
}

void mousePressed() {
  int xCord = int(mouseX/cellWidth);
  int yCord = int(mouseY/cellHeight);
  
  if (board[xCord][yCord] == 0) {
    board[xCord][yCord] = 1;
  } else {
    board[xCord][yCord] = 0;
  }
}

void randomize() {
 
  
  for (int x=0; x < cols; x++) {
    for (int y=0; y < rows; y++) {
      board[x][y] = int(0);
    }
  }
}
  
void keyPressed() {
  if (key == 'r') {
    board = new int[cols][rows];
  }
}
    
  
      
  