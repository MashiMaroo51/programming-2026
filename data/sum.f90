program positive_sum
    implicit none
    integer :: n, i
    integer(kind=8) :: total

    do
        print *, "Enter a positive integer N:"
        read *, n
        if (n > 0) exit
            print * , "try again."
    end do

        total = 0
        do i = 1, n
            total = total + i
            print *, i, total
        end do

        print *, "Sum:", total
    end program positive_sum
