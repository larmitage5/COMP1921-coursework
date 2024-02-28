#include <stdio.h>
#include <stdlib.h>

typedef struct {
    int height;
    int width;
    char dims[100][100];
} mazeDimensions;

typedef struct {
    int colPos[];
    int rowPos[];
} position;

void readIn (char *filename, char *map){
    /* checks file is valid else raises error message
    reads in each row of map text file, adds correct items dims array
    prints each row to new text file called map.txt, 
    */
}

int checkMaze (char *map){
    /* checks that maze file is valid
    if rows are not all the same length, maze is too big or too small, has no start or no end,
    has multiple starts or multiple ends or contains invalid characters then displays "Invalid Maze"
    and returns false, else returns true
    */ 

}

void moveUp(position* colPos, position* rowPos, mazeDimensions* dims, char* map){
    /*using colPos and rowPos, checks dims, and uses checkChar on character being moved onto.
    if valid, the 'X' moves to the new and is replaced by ' '.
    colPos updated
    updates map.txt, displays 'Successfully moved!'
    */
}

void moveDown(position* colPos, position* rowPos, mazeDimensions* dims, char* map){
    /*using colPos and rowPos, checks dims, and uses checkChar on character being moved onto.
    if valid, the 'X' moves to the new and is replaced by ' '.
    colPos updated
    updates map.txt, displays 'Successfully moved!'
    */
}

void moveRight(position* colPos, position* rowPos, mazeDimensions* dims, char* map){
    /*using colPos and rowPos, checks dims, and uses checkChar on character being moved onto.
    if valid, the 'X' moves to the new and is replaced by ' '.
    rowPos updated
    updates map.txt, displays 'Successfully moved!'
    */
}

void moveLeft(position* colPos, position* rowPos, mazeDimensions* dims, char* map){
    /*using colPos and rowPos, checks dims, and uses checkChar on character being moved onto.
    if valid, the 'X' moves to the new and is replaced by ' '.
    rowPos updated
    updates map.txt, displays 'Successfully moved!'
    */
}

void checkChar(mazeDimensions* dims){
    // for movement, checks if a specific character is '#' or 'E' or outside of maze
    // for # or oustide of maze displays appropriate error message, for E calls end() function
}

void displayMap(char *map){
    // prints map.txt
}

int start(char *map, mazeDimensions* dims, position* colPos, position* rowPos) {
    // locates and changes 'S' in dims to 'X', updates colPos and rowPos to location of X
    // locates and changes 'S' in map.txt to 'X'
}

int end(){
    // displays message 'Congratulations, you have exited the maze!'
    // exits the programme
}

int main (int argc, char *argv[]) {

    // code that prints "Usage: ./code <filename>" if wrong number of arguments

    // readIn(argv[1]) reads in argument file and checks it

    // checkMaze() function used to validate maze

    // start() function used

    /*while (1) {
        printf("Please enter 'A' to move left, 'D' to move right, 'W' to move up, 'S' to move down, or 'M' to view map:\n");

        // switch statement for character user enters
        // case A/a moveLeft()
        // case W/w moveUp()
        // case D/d moveRight()
        // case S/s moveDown
        // case M/m displayMap()
        // default prints error message, asks for another input
        // continues to ask for input until end is reached, then returns 0
        }
    */
}