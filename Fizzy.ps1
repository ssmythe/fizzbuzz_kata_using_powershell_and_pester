. "./FizzBuzz.ps1"

for ($number = 1; $number -le 100l; $number++) {
    $output = FizzBuzz $number
    Write-Output $output
}
