# Import the script file once before running any tests
BeforeAll {
    . ./007-classes.ps1
}

# Test suite for the Person and Student classes
Describe "Person and Student Class Tests" {

    Context "Person Class Tests" {

        It "Creates a Person object with correct properties" {
            $person = [Person]::new("Joseph", "Whiteaker", 30)
            $person.FirstName | Should -Be "Joseph"
            $person.LastName | Should -Be "Whiteaker"
            $person.Age | Should -Be 30
        }

        It "Returns the correct full name" {
            $person = [Person]::new("Joseph", "Whiteaker", 30)
            $person.GetFullName() | Should -Be "Joseph Whiteaker"
        }

        It "Introduces the person correctly" {
            $person = [Person]::new("Joseph", "Whiteaker", 30)
            $person.Introduce() | Should -Be "Hello, my name is Joseph Whiteaker and I am 30 years old."
        }
    }

    Context "Student Class Tests" {

        It "Creates a Student object with correct properties" {
            $student = [Student]::new("Emily", "Clark", 20, "University of Linux")
            $student.FirstName | Should -Be "Emily"
            $student.LastName | Should -Be "Clark"
            $student.Age | Should -Be 20
            $student.School | Should -Be "University of Linux"
        }

        It "Returns the correct full name for Student" {
            $student = [Student]::new("Emily", "Clark", 20, "University of Linux")
            $student.GetFullName() | Should -Be "Emily Clark"
        }

        It "Introduces the student correctly" {
            $student = [Student]::new("Emily", "Clark", 20, "University of Linux")
            $student.Introduce() | Should -Be "Hello, my name is Emily Clark, I am 20 years old, and I attend University of Linux."
        }
    }
}
