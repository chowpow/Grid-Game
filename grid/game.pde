boolean playerOnePlayed, playerTwoPlayed; //<>//

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
  for (int x = 0; x < cols; x++) 
  {
    for (int y = 0; y < rows; y++) 
    {
      if (board[