#!/bin/sh

a=10
b=5

echo "1"
let "var=$a+$b"
echo "$var"

echo "2"
let var=a+b
echo "$var"

echo "3"
let var=$a+$b
echo "$var"

echo "4"
let "var=+b"
echo "$var"

echo "5"
let var = a + b
echo "$var"
