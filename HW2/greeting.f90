program greeting
    implicit none
    character(len=40) :: name

    print *, "Enter your name:"
    read *, name
    print *, "Hello, ", trim(name), "!"
end program greeting