#ifndef functions
#define functions

bool readIn (char *filename);
bool checkMaze (char *map);
void moveUp (char *map, position *pos);
void moveDown(char *map, position* pos);
void moveRight(char *map, position* pos);
void moveLeft(char *map, position* pos);
bool checkChar(position* pos);
int displayMap(char *map);
bool end();

#endif