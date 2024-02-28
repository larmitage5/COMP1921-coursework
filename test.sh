#!/bin/bash

# file tests - test that maze meets criteria
echo -e "~~ File Tests ~~"

# test 1
echo -n "Testing bad maze dimensions - "
./code testdata/bad_dims.txt > tmp
if grep -q "Invalid Maze" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 2
echo -n "Testing multiple starts - "
./code testdata/bad_start.txt > tmp
if grep -q "Invalid Maze" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 3
echo -n "Testing multiple ends - "
./code testdata/bad_end.txt > tmp
if grep -q "Invalid Maze" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 4
echo -n "Testing invalid maze characters - "
./code testdata/bad_chars.txt > tmp
if grep -q "Invalid Maze" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 5
echo -n "Testing too big maze - "
./code testdata/too_big.txt > tmp
if grep -q "Invalid Maze" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 6
echo -n "Testing too small maze - "
./code testdata/too_small.txt > tmp
if grep -q "Invalid Maze" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 7
echo -n "Testing no start - "
./code testdata/no_start.txt > tmp
if grep -q "Invalid Maze" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 8
echo -n "Testing no end - "
./code testdata/no_end.txt > tmp
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
./code > tmp
if grep -q "Usage: ./code <filename>" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 10
echo -n "Testing multiple arguments - "
./code maze1.txt maze2.txt > tmp;
if grep -q "Usage: ./code <filename>" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 11
echo -n "Testing incorrect argument - "
./code testdata/fake_file.txt > tmp
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
./code testdata/maze1.txt < inputs/empty.txt > tmp
if grep -q "Error: invalid character entered" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 13
echo -n "Testing for invalid user input (symbol) - "
echo '😭' | ./code testdata/maze1.txt > tmp
if grep -q "Error: invalid character entered" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 14
echo -n "Testing for invalid user input (letter) - "
echo 'k' | ./code testdata/maze1.txt > tmp
if grep -q "Error: invalid character entered" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 15
echo -n "Testing for walking into walls - "
echo 'D' | ./code testdata/maze1.txt > tmp
if grep -q "Cannot walk this way!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 16
echo -n "Testing map after walking into walls - "
./code testdata/maze1.txt < inputs/input2.txt > tmp
if grep -q "#######\n#    E#\n# ### #\n#   # #\n### # #\n#     #\n###X###" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 17
echo -n "Testing for walking out of maze bounds - "
echo 'S' | ./code testdata/maze1.txt > tmp
if grep -q "Cannot walk this way!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 18
echo -n "Testing map after walking out of bounds- "
./code testdata/maze1.txt < inputs/input4.txt > tmp
if grep -q "#######\n#    E#\n# ### #\n#   # #\n### # #\n#     #\n###X###" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# tests for success
echo -e "\n~~ Success Tests ~~"

# test 19
echo -n "Testing for maze loading successfully - "
./code testdata/maze1.txt tmp
if grep -q "Maze loaded successfully!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 20
echo -n "Testing for moving up - "
./code testdata/maze3.txt < inputs/input3.txt> tmp
if grep -q "#######\n#     #\n### ###\n#  S  #\n#     #\n#     #\n##E####" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 21
echo -n "Testing for moving down - "
./code testdata/maze3.txt < inputs/input4.txt > tmp
if grep -q "#######\n#     #\n### ###\n#     #\n#     #\n#  S  #\n##E####" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 22
echo -n "Testing for moving right - "
./code testdata/maze3.txt < inputs/input2.txt > tmp
if grep -q "#######\n#     #\n### ###\n#     #\n#   S #\n#     #\n##E####" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 23
echo -n "Testing for moving left - "
./code testdata/maze3.txt < inputs/input5.txt > tmp
if grep -q "#######\n#     #\n### ###\n#     #\n# S   #\n#     #\n##E####" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 24
echo -n "Testing for correct initial map - "
echo 'M' | ./code testdata/maze1.txt tmp
if grep -q "#######\n#    E#\n# ### #\n#   # #\n### # #\n#     #\n###X###" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# test 25
echo -n "Testing for correct end - "
./code testdata/end.txt < inputs/input.txt > tmp
if grep -q "Congratulations, you have exited the maze!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

rm -f tmp