boolean playerOnePlayed, playerTwoPlayed;

void playerOneTurn() {
  playerOnePlayed = false;


  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {


      if (playerOnePlayed == false) {
        if (board[x][y] == 1) {

          playerOnePlayed = true;
        }
      }
    }
  }
}

void playerTwoTurn() {
  playerTwoPlayed = false;
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {
      int xOffset = 0;
      int yOffset = 0;

      if (playerOnePlayed == true) {
        if (board[x][y] == 1) {
          if (x == 0) {
            xOffset = 1;
          } else if (x == 9) {
            xOffset = -1;
          } else {
            xOffset = 1;
          }
          board[x+xOffset][y] = 2;
          playerOnePlayed = false;
        }
      }
    }
  }
}

void checkIfGameOver() {
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {

      if (board[0][0] == 1 && board[1][0] == 1 && board[2][0] == 1 && board[3][0] == 1) {
        fill(255, 0, 0);
        text("Game over!", 400, 400);
      }
    }
  }
}