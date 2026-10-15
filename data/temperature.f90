program temperature
    implicit none
    real :: celsius, fahrenheit

    print *, "Temperature in Celsius:"
    read *, celsius

    fahrenheit = (9.0 / 5.0) * celsius + 32.0
    print *, "Fahrenheit:", fahrenheit
end program temperatureS
