#include <stdio.h>

typedef struct {
    char row[100];
    // 2d array???
} POSITION;

void readIn (filename){
    /*reads in each row of map text file
    adds each row to pos
    prints each row to new text file called map.txt
    */
}

void checkMaze (map_file){
    /* checks that maze file is valid
    if rows are not all the same length, maze is too big or too small, has no start or no end,
    has multiple starts or multiple ends or contains invalid characters then displays "Invalid Maze"
    */
    
}

void start(map_file, POSITION* row) {
    // replaces 'S' in map.txt and pos with 'X'
}

void moveUp (map_file, POSITION* row){
    /* checks the item in the array of the row above in the same position
      for pos[n].row[8] checks pos[n-1].row[8]
      calls checkChar function
      if it passes, value of pos[n-1].row[8] becomes 'X' and value of pos[n].row[8] becomes ' '
      updates map.txt
      displays "Successfully moved!"
    */
}

void moveDown(map_file, POSITION* row){
    /* checks the item in the array of the row below in the same position
      for pos[n].row[8] checks pos[n+1].row[8]
      calls checkChar function
      else, value of pos[n+1][8] becomes 'X' and value of pos[n][8] becomes ' '
      updates map.txt
      displays "Successfully moved!"
    */
}

void moveRight(map_file, POSITION* row){
    /* checks the next item in the same array
      for pos[n].row[8] checks pos[n].row[9]
      calls checkChar function
      else, value of pos[n].row[9] becomes 'X' and value of pos[n].row[8] becomes ' '
      updates map.txt
      displays "Successfully moved!"
    */
}

void moveLeft(map_file, POSITION* row){
    /* checks the previous item in the same array
      for pos[n][8] checks pos[n][7]
      calls checkChar function
      else, value of pos[n][7] becomes 'X' and value of pos[n][8] becomes ' '
      updates map.txt
      displays "Successfully moved!"
    */
}

void checkChar(POSITION* row){
    // for movement, checks if character attempting to move to is '#' or 'E'
    // for # displays appropriate error message, for E calls end() function
}

int displayMap(map_file) {
    // prints map.txt
}

int end() {
    // displays message 'Congratulations, you have exited the maze!'
    // returns 0, exits the programme
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

    POSITION pos[100];
    char row[100];

    //readIn(argv[1]);

    //checkMaze(map.txt);

    //start(map.txt)

    // read in, check, prompt user, 

    while (1) {
        printf("Please enter 'A' to move left, 'D' to move right, 'W' to move up, 'S' to move down, or 'M' to view map:\n");

        //choice = getchar();
        //while(getchar() != '\n');
       
        // switch statement
        /*
        case 'A':
        case 'a':
            moveLeft();
            break;
        
        case 'W':
        case 'w':
            moveUp();
            break;

        case 'D':
        case 'd':
            moveRight();
            break;

        case 'S':
        case 's':
            moveDown();
            break;

        case 'M':
        case 'm':
            displayMap();
            break;
            
        default:
            printf("Error: invalid character entered");
            break;
        */

        }
    return 0;
    
}
