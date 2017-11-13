boolean playerOnePlayed, playerTwoPlayed;
int[] randomNumber = {0, 1};


void playerOneTurn() {
  playerOnePlayed = false;


  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {


      if (playerOnePlayed == false) {
        if (board[x][y] == 1) {
          stroke(0, 0, 255);

          playerOnePlayed = true;
        }
      }
    }
  }
}

void playerTwoTurn() {
  playerTwoPlayed = false;
  int randomValue = int(random(randomNumber.length));
  
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {
      int xOffset = 0;
      int yOffset = 0;

      if (playerOnePlayed == true) {
        if (board[x][y] == 1) {
        
          playerOnePlayed = false;
        }
      }
    }
  }
}

void checkIfGameOver() {
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {

      if (board[0][0] == 1 && board[0][1] == 1 && board[0][2] == 1) {
        fill(255, 0, 0);
        text("Game over!", 300, 300);
      }
    }
  }
}