boolean playerOnePlayed, playerTwoPlayed; //<>//
int winner = 0;
boolean gameOver = false;

void playerTwoTurn() {
  playerTwoPlayed = false;

  if (playerOnePlayed == true) {
    int x = 0;
    while (x < cols && playerTwoPlayed == false)
    {
      int y = 0;
      while (y < rows && playerTwoPlayed == false)
      {
        if (board[x][y] == 0) {
          board[x][y] = 2;
          playerTwoPlayed = true;
          println(x, y);
        }
        y++;
      }
      x++;
    }
  }
  playerOnePlayed = false;
}

void checkIfGameOver() {
  fill(0, 255, 0);
  
  for (int x = 0; x < cols; x++) 
  {
    for (int y = 0; y < rows; y++) 
    {
      // checking rows
      if (board[x][0] == board[x][1] && board[x][0] == board[x][2] && board[x][0] != 0) {
        winner = board[x][0];
      }
      
      // checking cols
      if (board[0][y] == board[1][y] && board[0][y] == board[2][y] && board[0][x] != 0) {
        winner = board[0][y];
      }
      
      
      
      
    }
  }
  if (winner != 0) {
    text("Player " +winner+ "wins", width / 2, height / 2);
  }
}
  
   
      
        