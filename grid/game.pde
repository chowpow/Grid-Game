boolean playerOnePlayed, playerTwoPlayed; //<>//
int winner = 0;
String endMessage; 

void playerTwoTurn() {
// If player one has played the computer picks an empty square
  playerTwoPlayed = false;
  
  if (playerOnePlayed == true) {
  // setting x and y to run through the array in a while loop  
    int x = 0;
  
  // use of while loop so it does not run if player two has played  
    while (x < cols && playerTwoPlayed == false)
    {
      int y = 0;
      while (y < rows && playerTwoPlayed == false)
      {
        if (board[x][y] == 0) {
          board[x][y] = 2;
          playerTwoPlayed = true;
        }
        y++;
      }
      x++;
    }
  }
  playerOnePlayed = false;
}

void checkIfGameOver() {
  // checks all winning situations 
  fill(0, 255, 0);
  endMessage = "Player " +winner+ " wins";
  
  for (int x = 0; x < cols; x++) 
  {
    for (int y = 0; y < rows; y++) 
    {
      // checking rows
      if (board[x][0] == board[x][1] && board[x][0] == board[x][2] && board[x][0] != 0) {
        winner = board[x][0];
      }
      
      // checking columns
      if (board[0][y] == board[1][y] && board[0][y] == board[2][y] && board[0][x] != 0) {
        winner = board[0][y];
      }
      
      // checking diagonal #1
      if (board[0][0] == board[1][1] && board[0][0] == board[2][2] && board[0][0] !=0) {
        winner = board[0][0];
      }
      
      // checking diagonal #2
      if (board[2][0] == board[1][1] && board[2][0] == board[0][2] && board[0][0] !=0) {
        winner = board[2][0];
      }                             
    }
  }
  if (winner != 0) {
    text(endMessage + "\n Press r to restart", width / 2, height / 2);
  }
}
  
   
      
        