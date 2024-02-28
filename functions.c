typedef struct {
    int col_pos[];
    int row_pos[];
} position;

typedef struct {
    int height;
    int width;
    char pos[102][102];
} maze_dimensions;

void readIn (char *filename){
    /*reads in each row of map text file, adds each row to struct.
    prints each row to new text file called map.txt, 
    */
}

bool checkMaze (char *map){
    /* checks that maze file is valid
    if rows are not all the same length, maze is too big or too small, has no start or no end,
    has multiple starts or multiple ends or contains invalid characters then displays "Invalid Maze"
    and returns false, else returns true
    */ 

}

void moveUp (char *map, position *pos){
    /* for pos[a][b], uses checkChar function, then if pos[a+1][b]==' ', swaps the two
      updates map.txt, displays "Successfully moved!"
    */
}

void moveDown(char *map, position* pos){
    /* for pos[a][b], uses checkChar function, then if pos[a-1][b]==' ', swaps the two
      updates map.txt, displays "Successfully moved!"
      use map function to check
    */
}

void moveRight(char *map, position* pos){
    /* for pos[a][b], uses checkChar function, then if pos[a][b+1]==' ', swaps the two
      updates map.txt, displays "Successfully moved!"
    */
}

void moveLeft(char *map, position* pos){
    /* for pos[a][b], uses checkChar function, then if pos[a][b-1]==' ', swaps the two
      updates map.txt, displays "Successfully moved!"
    */
}

void checkChar(position* pos){
    // for movement, checks if character attempting to move to is '#' or 'E' or outside of maze
    // for # displays appropriate error message, for E calls end() function
    // set 'height' as size of columns, 'width' as size of rows, if a+1>height or b+1>width or a-1<0 or b-1<0, displays error message
}

int displayMap(char *map) {
    // prints map.txt
}

int end() {
    // displays message 'Congratulations, you have exited the maze!'
    // returns 0, exits the programme
}