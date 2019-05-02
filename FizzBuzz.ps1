Function FizzBuzz ([Int] $number) {
    $results = ""
    $numberAsString = $number.ToString()

    If ($number % 3 -eq 0 -Or $numberAsString -Match "3") {
        $results += "Fizz"
    }
    If ($number % 5 -eq 0 -Or $numberAsString -Match "5") {
        $results += "Buzz"
    }
    
    return $(If ($results -ne "") {$results} Else {$numberAsString})
}

