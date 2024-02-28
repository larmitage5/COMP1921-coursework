#include <stdio.h>
#include "functions.h"

int main (int argc, char *argv[]) {
    position* location = malloc(sizeof(position));

    // code that prints "Usage: ./code <filename>" if wrong number of arguments

    // readIn(argv[1]);

    // checkMaze(pos);

    // code that locates and changes 'S' in array and map to 'X' :
    // if pos[i][j] == 'S' -> pos[i][j] == 'X'

    while (1) {
        printf("Please enter 'A' to move left, 'D' to move right, 'W' to move up, 'S' to move down, or 'M' to view map:\n");

        // switch statement for character user enters
        // case A/a moveLeft()
        // case W/w moveUp()
        // case D/d moveRight()
        // case S/s moveDown
        // case M/m displayMap()
        // default prints error message, asks for another input
        // continues to ask for input until end is reached, then 0 is returned
        }
}

// struct and function parameters