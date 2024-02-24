/* include 
struct definitions
function/procedure definitions
basic main outline
use comments to give basic idea of code structure
*/

/*
required functions
- move up
- move down
- move left
- move right
- show map
- player position
- check maze file
*/


/* 
required structs
- 
*/

// struct for position of player

typedef struct {
    // 2d array??
    char row[100];
    char pos[100][100];
} position;

void readIn (){
    /* reads in text file
    adds each row to an array
    for each row, adds each character to an array, creating a 2d array for position
    prints to new text file called map.txt
    */
}

int checkMaze (){
    /* checks that maze file is valid
    checks that each item in the array has the same length - else displays 'Invalid Maze'
    checks that each array only contains ' ','#','S','E' - else displays 'Invalid Maze: invalid characters'
    creates a counter to check that across all arrays, there is only one 'S' and only one 'E'
    - else displays 'Invalid Maze: multiple starts' or 'Invalid Maze: multiple ends'
    */
}

int moveUp (){
    /* checks the item in the array of the row above in the same position
      for pos[n][8] checks pos[n-1][8]
      if it is '#' displays error message
      if it is 'E' calls the end() function
      else, value of pos[n-1][8] becomes 'X' and value of pos[n][8] becomes ' '
      updates text file accordingly
      displays 'Successfully moved up.'
    */
}

int moveDown(){
    /* checks the item in the array of the row below in the same position
      for pos[n][8] checks pos[n+1][8]
      if it is '#' displays error message
      if it is 'E' calls the end() function
      else, value of pos[n+1][8] becomes 'X' and value of pos[n][8] becomes ' '
      updates text file accordingly
      displays 'Successfully moved down.'
    */
}

int moveRight(){
    /* checks the next item in the same array
      for pos[n][8] checks pos[n][9]
      if it is '#' displays error message
      if it is E calls the end() function
      else, value of pos[n][9] becomes 'X' and value of pos[n][8] becomes ' '
      updates text file accordingly
      displays 'Successfully moved right.'
    */
}

int moveLeft(){
    /* checks the previous item in the same array
      for pos[n][8] checks pos[n][7]
      if it is '#' displays error message
      if it is E calls the end() function
      else, value of pos[n][7] becomes 'X' and value of pos[n][8] becomes ' '
      updates text file accordingly
      displays 'Successfully moved left.'
    */
}

int map() {
    /* prints map.txt
    */
}

int start() {
    // replaces 'S' in map.txt with 'X'
}

int end() {
    // displays message 'Congratulations, you have exited the maze!'
    // exits the programme
}


int main () {
    readIn(filename);
    checkMaze(position);

    
}
