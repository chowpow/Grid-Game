int [][] board;
int cols, rows;
int xLineStart, yLineStart, lineSpace;

float cellWidth, cellHeight;
boolean gameover = false;

void setup() {

  size(600, 600);
  cols = 3;
  rows = 3;

  ellipseMode(CENTER);
  strokeWeight(5);
  textAlign(CENTER);
  textSize(40);

  cellWidth = width / cols;
  cellHeight = height / rows;
  lineSpace = 30;

  board = new int[cols][cols]; 
}

void draw() {
  displayBoard();
  gameBoard();
  checkIfGameOver();
  
}

void displayBoard() {
  // initial setup of the grid
  for (int x = 0; x < cols; x++) 
  {
    for (int y = 0; y < rows; y++)
    {
      fill(255);
      stroke(0);
      strokeWeight(5);
      rect(x*cellWidth, y*cellWidth, cellWidth, cellHeight);
    }
  }
}

void gameBoard() {
  // draws the 'O's and 'X's dependng on the value of a square
  for (int x = 0; x < cols; x++) 
  {
    for (int y = 0; y < rows; y++)
    {
      xLineStart = x*int(cellWidth);
      yLineStart = y*int(cellHeight);

      if (board[x][y] == 1) {
        // draws the Os
        noFill();
        stroke(0, 0, 255);
        strokeWeight(5);
        ellipse(x*cellWidth+cellWidth/2, y*cellHeight+cellHeight/2, 150, 150);
      } 
      
      else if (board[x][y] == 2) {
        // draws the Xs
        stroke(255, 0, 0);
        strokeWeight(10);
        line(xLineStart + lineSpace, yLineStart + lineSpace, xLineStart+int(cellWidth) - lineSpace, yLineStart+int(cellHeight) - lineSpace);
        line(xLineStart + lineSpace, yLineStart+int(cellHeight) - lineSpace, xLineStart+int(cellWidth) -lineSpace, yLineStart + lineSpace);
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
      playerOnePlayed = true;
    }
  }

  if (playerOnePlayed == true) {
    playerTwoTurn();
    playerOnePlayed = false;
  }
}

void keyPressed() {
  // reset button
  if (key == 'r' || key == 'R') {
    board = new int[cols][rows];
    winner = 0;
  }
}