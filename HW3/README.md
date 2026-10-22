# Homework 2 — Temperature Converter

Interactive menu-driven Fortran program for temperature conversions ($C \leftrightarrow F$) with input validation and loop repeat functionality.

## Compilation & Execution Instructions

```bash
gfortran -Wall -Wextra Temp_Convert.f90 -o temp_conv
./temp_conv

Program "Temperature Converter".

This program displays a text menu, allows selecting the conversion direction (Celsius $\leftrightarrow$ Fahrenheit), checks the validity of user input (rejects unknown options), and runs in a loop until zero 0 is entered.

---

### Program source code (`homework-02/temp_conv.f90`)

```fortran
program temperature_converter
    use iso_fortran_env, only: int32
    implicit none

    integer :: choice, status
    real :: celsius, fahrenheit

    do
        ! 1. Main menu display
        print *, "=========================================="
        print *, "      TEMPERATURE CONVERTER MENU          "
        print *, "=========================================="
        print *, "1: Convert Celsius to Fahrenheit"
        print *, "2: Convert Fahrenheit to Celsius"
        print *, "0: Exit program"
        print *, "Select an option (0-2):"

        ! 2. Reading user input with iostat error handling
        choice = -1
        read(*, *, iostat=status) choice

        ! If letters or an input error are entered — reset and retry
        if (status /= 0) then
            print *, "Error: Invalid input! Please enter a number."
            status = 0
            cycle
        end if

        ! 3. Handling user choice
        select case (choice)
        case (1)
            print *, "Enter temperature in Celsius:"
            read(*, *, iostat=status) celsius
            if (status == 0) then
                fahrenheit = (9.0 / 5.0) * celsius + 32.0
                print *, celsius, " deg C =", fahrenheit, " deg F"
            else
                print *, "Error: Invalid numeric value!"
            end if

        case (2)
            print *, "Enter temperature in Fahrenheit:"
            read(*, *, iostat=status) fahrenheit
            if (status == 0) then
                celsius = (fahrenheit - 32.0) * (5.0 / 9.0)
                print *, fahrenheit, " deg F =", celsius, " deg C"
            else
                print *, "Error: Invalid numeric value!"
            end if

        case (0)
            print *, "Exiting program. Goodbye!"
            exit

        case default
            print *, "Error: Unknown menu option! Please choose 0, 1, or 2."
        end select

        print *, ""
    end do
end program temperature_converter

```

---

### Code Breakdown: What, Where, and Why

1. **`do ... end do` (Outer loop):**
Ensures continuous program operation and redisplays the menu after each calculation until the user explicitly selects `0`.

2. **`select case (choice)` (Selection structure):**
Provides a convenient way to branch execution logic based on the selected menu option.

3. **`case default`:**
Catches **unknown menu options** (for example, if the user enters a number like `5` or `-2`).

4. **`iostat=status` and `cycle`:**
The `iostat` flag checks whether non-numeric characters (letters) were entered. If an invalid input occurs (`status /= 0`), the program prints an error message and uses `cycle` to immediately skip to the next loop iteration, preventing an unexpected program crash.

5. **Conversion Formulas:**
- $C \rightarrow F$: `(9.0 / 5.0) * celsius + 32.0` (requires floating-point division `9.0/5.0` to avoid integer truncation where `9/5 = 1`).
- $F \rightarrow C$: `(fahrenheit - 32.0) * (5.0 / 9.0)`.


---

```markdown
# Homework 2 — Temperature Converter

Interactive menu-driven Fortran program for temperature conversions ($C \leftrightarrow F$) with input validation and loop repeat functionality.

## Compilation & Execution Instructions

```bash
gfortran -Wall -Wextra Temp_Convert.f90 -o temp_conv
./temp_conv

```

## Test Table

| Menu Choice | Input Value | Expected Outcome | Observed Outcome | Status |
| --- | --- | --- | --- | --- |
| `1` | `0` (°C) | `32.0000000 deg F` | `32.0000000 deg F` | **PASSED** |
| `1` | `100` (°C) | `212.0000000 deg F` | `212.0000000 deg F` | **PASSED** |
| `2` | `32` (°F) | `0.0000000 deg C` | `0.0000000 deg C` | **PASSED** |
| `2` | `-40` (°F) | `-40.0000000 deg C` | `-40.0000000 deg C` | **PASSED** |
| `5` | N/A | Menu option rejection error | `Error: Unknown menu option!` | **PASSED** |
| `abc` | N/A | Format protection rejection | `Error: Invalid input!` | **PASSED** |
| `0` | N/A | Program exits smoothly | `Exiting program. Goodbye!` | **PASSED** |

```

```