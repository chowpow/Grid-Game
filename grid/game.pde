boolean playerOnePlayed, playerTwoPlayed;

void playerOneTurn() {
  playerOnePlayed = false;


  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {


      if (playerOnePlayed == false) {
        if (board[x][y] == 1) {
          fill(0);
          ellipse(x*cellWidth+cellWidth/2, y*cellHeight+cellHeight/2, 70, 70);
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
      int xOffset = int(random(-1, 1));
      int yOffset = int(random(-1, 1));

      if (playerTwoPlayed == false) {
        if (board[x+xOffset][y+yOffset] == 0) {
          board[x+xOffset][y+yOffset] = 2;
          fill(255);
          ellipse(x*cellWidth+cellWidth/2, y*cellHeight+cellHeight/2, 70, 70);
        //} else {
        //  while (board[x+xOffset][y+yOffset] != 0) {
        //    xOffset = int(random(-1, 1));
        //    yOffset = int(random(-1, 1));
        //  }
        }
          
        
        playerTwoPlayed = true;
      }
    }
  }
}