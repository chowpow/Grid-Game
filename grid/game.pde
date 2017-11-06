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
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {
      int xOffset = int(random(-1, 1));
      int yOffset = int(random(-1, 1));
      
      board[x+xOffset][y+yOffset] = 1;
      fill(255);
      ellipse(x*cellWidth+cellWidth/2, y*cellHeight+cellHeight/2, 70, 70);
    }
  }
}
      
  
  
  
    

//void computerTurn() {
//  playerTwoPlayed = false;
  
//  for (int x = 0; x < cols; x++) {
//    for (int y = 0; y < rows; y++) {
//      if (playerOnePlayed = true) {
        


//void playerTurns() {

  
//  for (int x = 0; x < cols; x++) {
//    for (int y = 0; y < rows; y++) {
      
//      if (playerTwoPlayed == false) {
//        if (board[x][y] == 1) {
//          fill(1);
//          ellipse(x*cellWidth+cellWidth/2, y*cellHeight+cellHeight/2, 70, 70);
//        }
//        playerOnePlayed = true;
//      }
      
//      if (playerOnePlayed == true) {
//        if (board[x][y] == 1) {
//          fill(255);
//          ellipse(x*cellWidth+cellWidth/2, y*cellHeight+cellHeight/2, 70, 70);
//        }
//        playerTwoPlayed = false;
//      }
//    }
//  }
//}

          
          

  
  