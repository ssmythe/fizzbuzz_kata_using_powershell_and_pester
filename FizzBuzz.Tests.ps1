$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "FizzBuzz" {
    It "First Scenario" {
        $result = FizzBuzz 1
        $result | Should -Be "1"
    }

    It "Second Scenario" {
        $result = FizzBuzz 2
        $result | Should -Be "2"
    }

    It "Third Scenario" {
        $result = FizzBuzz 3
        $result | Should -Be "Fizz"
    }

    It "Fourth Scenario" {
        $result = FizzBuzz 5
        $result | Should -Be "Buzz"
    }

    It "Fifth Scenario" {
        $result = FizzBuzz 15
        $result | Should -Be "FizzBuzz"
    }

    It "Sixth Scenario" {
        $result = FizzBuzz 13
        $result | Should -Be "Fizz"
    }

    It "Seventh Scenario" {
        $result = FizzBuzz 59
        $result | Should -Be "Buzz"
    }
}

