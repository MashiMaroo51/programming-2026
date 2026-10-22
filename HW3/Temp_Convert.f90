program temperature_converter
    use iso_fortran_env, only: int32
    implicit none

    integer :: choice, status
    real :: celsius, fahrenheit
    
    do
    print *, "=========================================="
        print *, "      TEMPERATURE CONVERTER MENU          "
        print *, "=========================================="
        print *, "1: Convert Celsius to Fahrenheit"
        print *, "2: Convert Fahrenheit to Celsius"
        print *, "0: Exit program"
        print *, "Select an option (0-2):"

        if (status /= 0) then
            print *, "Error: Invalid input! Please enter a number."
            status = 0
            cycle
        end if

        choice = -1
        read(*, *, iostat=status) choice

        if (status /= 0) then
            print *, "Error: Invalid input! Please enter a number."
            cycle
        end if

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