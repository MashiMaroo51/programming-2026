program sum_n
    implicit none
    integer :: i, n, total

    print *, "Enter a positive integer N:"
    read *, n

    total = 0
    do i = 1, n
        total = total + i
    end do

    print *, "Sum from 1 to N is:", total
end program sum_n