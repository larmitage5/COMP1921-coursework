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
#include <stdio.h>

typedef struct {
    // 2d array??
    char row[100];
} pos;

void readIn (){
    /*reads in text file
    adds each row to struct
    prints each row to new text file called map.txt
    */
}

int checkMaze (){
    /* checks that maze file is valid
    checks that each item in the array has the same length - else displays 'Invalid Maze: bad dimensions'
    checks that each array only contains ' ','#','S','E' - else displays 'Invalid Maze: invalid characters'
    creates a counter to check that across all arrays, there is only one 'S' and only one 'E'
    - else displays 'Invalid Maze: multiple starts' or 'Invalid Maze: multiple ends'
    else prints "Maze loaded successfully!"
    */
}

int moveUp (){
    /* checks the item in the array of the row above in the same position
      for pos[n].row[8] checks pos[n-1].row[8]
      calls checkChar function
      else, value of pos[n-1].row[8] becomes 'X' and value of pos[n].row[8] becomes ' '
      updates text file accordingly
      displays 'Successfully moved up.'
    */
}

int moveDown(){
    /* checks the item in the array of the row below in the same position
      for pos[n].row[8] checks pos[n+1].row[8]
      calls checkChar function
      else, value of pos[n+1][8] becomes 'X' and value of pos[n][8] becomes ' '
      updates text file accordingly
      displays 'Successfully moved down.'
    */
}

int moveRight(){
    /* checks the next item in the same array
      for pos[n].row[8] checks pos[n].row[9]
      calls checkChar function
      else, value of pos[n].row[9] becomes 'X' and value of pos[n].row[8] becomes ' '
      updates text file accordingly
      displays 'Successfully moved right.'
    */
}

int moveLeft(){
    /* checks the previous item in the same array
      for pos[n][8] checks pos[n][7]
      calls checkChar function
      else, value of pos[n][7] becomes 'X' and value of pos[n][8] becomes ' '
      updates text file accordingly
      displays 'Successfully moved left.'
    */
}

int checkChar(){
    // for movement, checks if character moved into is '#' or 'E'
    // for # displays appropriate error message, for E calls end() function
}

int map() {
    // prints map.txt
}

int start() {
    // replaces 'S' in map.txt with 'X'
}

int end() {
    // displays message 'Congratulations, you have exited the maze!'
    // exits the programme
}

// number of functions - 10


/**
 * argv[1] = filename
 *
*/
int main (int argc, char *argv[]) {

    if (argc != 2){
        printf("Usage: ./code <filename>\n");
        return 0;
    }

   // readIn(argv[1]);
    //checkMaze();
    //start(map.txt)

    // read in, check, prompt user, 

    while (1) {
        printf("Please enter 'A' to move left, 'D' to move right, 'W' to move up, 'S' to move down, or 'M' to view map:\n");
        // scanf for user input
        // switch cases for entries WASDM and lowercase versions and corresponding function for each choice
        // default case - "Error: invalid character entered"
            
        return 0;
        }
    return 0;
    
}


// TO DO!!!!
// check struct is right
// check all tests are mentioned in c code
// compare to other skeleton code - too long? too many comments?
// recheck spec - anything missing?
// references