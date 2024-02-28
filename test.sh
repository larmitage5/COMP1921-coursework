#!/bin/bash

# file tests - test that maze meets criteria
echo -e "~~ File Tests ~~"

# test 1 - not all columns or rows the same length
echo -n "Testing bad maze dimensions - "
./maze testdata/bad_dims.txt > tmp
if grep -q "Invalid Maze" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 2
echo -n "Testing multiple starts - "
./maze testdata/bad_start.txt > tmp
if grep -q "Invalid Maze" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 3
echo -n "Testing multiple ends - "
./maze testdata/bad_end.txt > tmp
if grep -q "Invalid Maze" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 4 - characters that are not '#', ' ', 'S' or 'E'
echo -n "Testing invalid maze characters - "
./maze testdata/bad_chars.txt > tmp
if grep -q "Invalid Maze" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 5 - rows or columns bigger than 100
echo -n "Testing too big maze - "
./maze testdata/too_big.txt > tmp
if grep -q "Invalid Maze" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 6 - rows or columns saller than 5
echo -n "Testing too small maze - "
./maze testdata/too_small.txt > tmp
if grep -q "Invalid Maze" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 7
echo -n "Testing no start - "
./maze testdata/no_start.txt > tmp
if grep -q "Invalid Maze" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 8
echo -n "Testing no end - "
./maze testdata/no_end.txt > tmp
if grep -q "Invalid Maze" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi


# tests for invalid arguments
echo -e "\n~~ Argument Tests ~~"


# test 9
echo -n "Testing no arguments - "
./maze > tmp
if grep -q "Usage: ./code <filename>" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 10
echo -n "Testing multiple arguments - "
./maze maze1.txt maze2.txt > tmp;
if grep -q "Usage: ./code <filename>" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 11 - file inputted that does not exist
echo -n "Testing incorrect argument - "
./maze testdata/fake_file.txt > tmp
if grep -q "Error: bad filename" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# tests for invalid user inputs
echo -e "\n~~ User Input Tests ~~"


# test 12
echo -n "Testing for no user input - "
./maze testdata/maze1.txt < inputs/empty.txt > tmp
if grep -q "Error: invalid character entered" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 13
echo -n "Testing for invalid user input - "
echo '$' | ./maze testdata/maze1.txt > tmp
if grep -q "Error: invalid character entered" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 14
echo -n "Testing for walking into walls - "
echo 'D' | ./maze testdata/maze1.txt > tmp
if grep -q "Cannot walk this way!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 15 - checks that map hasn't updated
echo -n "Testing map after walking into walls - "
./maze testdata/maze1.txt < inputs/input2.txt > tmp
if grep -q "#######\n#    E#\n# ### #\n#   # #\n### # #\n#     #\n###X###" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 16
echo -n "Testing for walking out of maze bounds - "
echo 'S' | ./maze testdata/maze1.txt > tmp
if grep -q "Cannot walk this way!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 17 - checks that map hasn't updated
echo -n "Testing map after walking out of bounds- "
./maze testdata/maze1.txt < inputs/input4.txt > tmp
if grep -q "#######\n#    E#\n# ### #\n#   # #\n### # #\n#     #\n###X###" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# tests for success
echo -e "\n~~ Success Tests ~~"

# test 18 - checks that a mze is uploaded if it is correct
echo -n "Testing for maze loading successfully - "
./maze testdata/maze1.txt tmp
if grep -q "Maze loaded successfully!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 19
echo -n "Testing for moving up - "
./maze testdata/maze3.txt < inputs/input3.txt> tmp
if grep -q "#######\n#     #\n### ###\n#  S  #\n#     #\n#     #\n##E####" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 20
echo -n "Testing for moving down - "
./maze testdata/maze3.txt < inputs/input4.txt > tmp
if grep -q "#######\n#     #\n### ###\n#     #\n#     #\n#  S  #\n##E####" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 21
echo -n "Testing for moving right - "
./maze testdata/maze3.txt < inputs/input2.txt > tmp
if grep -q "#######\n#     #\n### ###\n#     #\n#   S #\n#     #\n##E####" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 22
echo -n "Testing for moving left - "
./maze testdata/maze3.txt < inputs/input5.txt > tmp
if grep -q "#######\n#     #\n### ###\n#     #\n# S   #\n#     #\n##E####" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 23
echo -n "Testing for correct initial map - "
echo 'M' | ./maze testdata/maze1.txt tmp
if grep -q "#######\n#    E#\n# ### #\n#   # #\n### # #\n#     #\n###X###" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 24
echo -n "Testing for correct end - "
./maze testdata/end.txt < inputs/input.txt > tmp
if grep -q "Congratulations, you have exited the maze!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

rm -f tmp