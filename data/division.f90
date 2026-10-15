program safe_division

    implicit none
    real ::numerator, denominator, result

    print *, "Enter the numerator and denominator:"
    read *, numerator, denominator

    if (denominator == 0.0) then
        print *, "cannot divide by zero"
        else
            result = numerator / denominator
            print *, "Result:", result
            end if
            
end program safe_division