program classify_sign
    implicit none
    integer :: n
    do
        print*, "Enter a non-negative integer:"
        read *, n
        if (n >= 0) then 
            exit
            end if
        print *, "Try again."
        end do 
end program classify_sign