# Homework 1 — Programming in Fortran (ČZU)

This repository contains the solutions for Homework from 2 lesson.

# Programs Overview
* `greeting.f90` — Reads a user's name and prints a personalized greeting using `trim()`.
* `temperature.f90` — Converts temperature from Celsius to Fahrenheit ($F = \frac{9}{5}C + 32$) using real arithmetic.
* `sum.f90` — Calculates the sum of integers from 1 to N using a `do` loop.
* `factorial.f90` — Calculates N! using a `do` loop and explores integer overflow limits (`int32` vs `int64`).

---
```bash

gfortran -Wall -Wextra greeting.f90 -o greeting
./greeting

gfortran -Wall -Wextra temperature.f90 -o temperature
./temperature

gfortran -Wall -Wextra sum.f90 -o sum
./sum

gfortran -Wall -Wextra factorial.f90 -o factorial
./factorial