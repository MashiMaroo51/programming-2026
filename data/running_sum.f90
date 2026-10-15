program running_sum
    implicit none
    integer :: i, n, total

    print *, "Enter a positive integer N:"
    read *, n

    total = 0
    do i = 1, n
        total = total + i
        print *, i, total
    end do

    print *, "Final Sum:", total
end program running_sum