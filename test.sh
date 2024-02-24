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

chmod -r testdata/bad_perms.txt

echo -e "~~ File Tests ~~"


echo -n "Testing bad maze dimensions - "
timeout 0.2s ./code testdata/bad_dims.txt > tmp
if grep -q "Invalid Maze: bad dimensions" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing multiple starts - "
timeout 0.2s ./code testdata/bad_start.txt > tmp
if grep -q "Invalid Maze: multiple starts" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing multiple ends - "
timeout 0.2s ./code testdata/bad_end.txt > tmp
if grep -q "Invalid Maze: multiple ends" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing invalid maze characters - "
timeout 0.2s ./code testdata/bad_chars.txt > tmp
if grep -q "Invalid Maze: invalid characters" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing bad filename - "
./code file.txt > tmp
if grep -q "Error: bad filename" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing bad permissions - "
timeout 0.2s ./code testdata/bad_perms.txt > tmp
if grep -q "Error: bad filename" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing no arguments - "
./code > tmp
if grep -q "Usage: ./code <filename>" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing multiple arguments - "
./code maze1.txt maze2.txt > tmp;
if grep -q "Usage: ./code <filename>" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi


echo -e "\n~~ User Input Tests ~~"


echo -n "Testing for no user input - "
echo '' | ./code testdata/maze1.txt > tmp
if grep -q "Error: invalid character entered" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for invalid user input - "
echo 'k' | ./code testdata/maze1.txt > tmp
if grep -q "Error: invalid character entered" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for multiple user inputs - "
echo 'x x' | ./code testdata/maze1.txt > tmp
if grep -q "Error: invalid character entered" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for walking into walls - "
echo 'D' | ./code testdata/maze1.txt > tmp
if grep -q "Cannot walk this way!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for walking out of maze bounds - "
echo 'S' | ./code testdata/maze1.txt > tmp
if grep -q "Cannot walk this way!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -e "\n~~ Success Tests ~~"

echo -n "Testing for maze loading successfully - "
./code testdata/maze1.txt > tmp
if grep -q "Maze loaded successfully!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for moving up - "
echo 'W' | ./code testdata/maze1.txt > tmp
if grep -q "Successfully moved!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for moving down - "
echo 'S' | ./code testdata/maze1.txt > tmp
if grep -q "Successfully moved!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for moving right - "
echo 'D' | ./code testdata/maze1.txt > tmp
if grep -q "Successfully moved!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for moving left - "
echo 'A' | ./code testdata/maze1.txt > tmp
if grep -q "Successfully moved!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for moving up (lowercase) - "
echo 'w' | ./code testdata/maze1.txt > tmp
if grep -q "Successfully moved!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for moving down (lowercase) - "
echo 's' | ./code testdata/maze1.txt > tmp
if grep -q "Successfully moved!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for moving right (lowercase) - "
echo 'd' | ./code testdata/maze1.txt > tmp
if grep -q "Successfully moved!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for moving left (lowercase) - "
echo 'a' | ./code testdata/maze1.txt > tmp
if grep -q "Successfully moved!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for map loading - "
echo 'M' | ./code testdata/maze1.txt > tmp
if grep -q "Map loaded successfully!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# TEST FOR ALL LOW TOO?

echo -n "Testing for correct end - "
echo 'W' | ./code testdata/end.txt > tmp
if grep -q "Congratulations, you have exited the maze!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# total number of tests - 24

chmod +r testdata/bad_perms.txt
rm -f tmp