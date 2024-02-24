# things that need to be checked:
# start at S?
# end at E?
# correct message displayed at E
# map only showed when m is pressed
# error message if player moves into wall
# error message if player tries to move off map
# key other than wasdm inputted
# works for both capitalised and uncapitalised
# is it solvable???
# test for success
# Each test should have a comment above it stating what it is testing for
# executable will be names maze


# TEST FOR USER INPUTS
# wrong key entered, too many keys entered, lowercase/uppercase, nothing entered, bad file, bad permissions, 


# TEST MAZE FILES
# all columns and rows same length, one S, one E, only the 4 specified characters,

# SUCCESS
# up, down, left, right work correctly, starts at S, ends at E, m displays map, maze successfully loaded


#!/bin/bash

echo -e "~~ File Tests ~~"

echo -n "Testing bad maze dimensions - "
echo -n "Testing multiple starts - "
echo -n "Testing multiple ends - "
echo -n "Testing invalid maze characters - "
echo -n "Testing bad filename - "
echo -n "Testing bad permissions - "

echo -e "\n~~ User Input Tests ~~"

echo -n "Testing for no user input - "
echo -n "Testing for invalid user input - "
echo -n "Testing for multiple user inputs - "
echo -n "Testing for lowercase user input - "

echo -e "\n~~ Success Tests ~~"

echo -n "Testing for maze loading successfully - "
echo -n "Testing for moving up - "
echo -n "Testing for moving down - "
echo -n "Testing for moving right - "
echo -n "Testing for moving left - "
echo -n "Testing for map loading - "
echo -n "Testing for correct end - "


rm -f tmp