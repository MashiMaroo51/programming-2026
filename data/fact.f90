program fact

    use iso_fortran_env, only: int32

    implicit none
    integer :: i, n
    integer(int32) :: factorial


    print *, "Enter a non-negative integer:"
    read *, n

        factorial = 1

        do i = 1, n
            factorial = factorial * i
        end do
        print *, "Factorial", n, "is", factorial
end program fact