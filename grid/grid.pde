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
  
  
 


}

void draw() {
  displayBoard();
}

void displayBoard() {

  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {

      fill(255);
      rect(x*cellWidth, y*cellHeight, cellWidth, cellHeight);
      
      playerOneTurn();
    }
  }
}


void mousePressed() {
  int xCord = int(mouseX/cellWidth);
  int yCord = int(mouseY/cellHeight);
  
  if (playerOnePlayed == false) {

    if (board[xCord][yCord] == 0) {
      board[xCord][yCord] = 1;
    }
  }
}

void keyPressed() {
  if (key == 'r') {
    board = new int[cols][rows];
  }
}