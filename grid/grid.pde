int[][] board;
int cols, rows;
float cellWidth, cellHeight;
boolean gameOver = false;

void setup() {
  size(800, 800);
  cols = 10;
  rows = 10;

  ellipseMode(CENTER);
  textAlign(CENTER);
  textSize(30);

  cellWidth = width / cols;
  cellHeight = height / rows;

  board = new int[cols][rows];
}

void draw() {
  displayBoard();
  checkIfGameOver();
}

void displayBoard() {

  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {

      fill(255);
      rect(x*cellWidth, y*cellHeight, cellWidth, cellHeight);
     
      if (gameOver == false) {
      
        playerOneTurn();
        playerTwoTurn();   
      }
      if (board[x][y] == 1) {
        fill(0);
        ellipse(x*cellWidth+cellWidth/2, y*cellHeight+cellHeight/2, 70, 70);
      }
      
      if (board[x][y] == 2) {
        fill(255);
        ellipse(x*cellWidth+cellWidth/2, y*cellHeight+cellHeight/2, 70, 70);
      }
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