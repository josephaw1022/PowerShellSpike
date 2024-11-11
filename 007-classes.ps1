# Define a basic class
class Person {
    # Define properties
    [string]$FirstName
    [string]$LastName
    [int]$Age

    # Constructor to initialize the object
    Person([string]$firstName, [string]$lastName, [int]$age) {
        $this.FirstName = $firstName
        $this.LastName = $lastName
        $this.Age = $age
    }

    # Method to display full name
    [string]GetFullName() {
        return "$($this.FirstName) $($this.LastName)"
    }

    # Method to introduce the person
    [string]Introduce() {
        return "Hello, my name is $($this.GetFullName()) and I am $($this.Age) years old."
    }
}

# Define a subclass that inherits from Person
class Student : Person {
    # Define additional property
    [string]$School

    # Constructor for the subclass
    Student([string]$firstName, [string]$lastName, [int]$age, [string]$school) : base($firstName, $lastName, $age) {
        $this.School = $school
    }

    # Override the Introduce method to add school information
    [string]Introduce() {
        return "Hello, my name is $($this.GetFullName()), I am $($this.Age) years old, and I attend $($this.School)."
    }
}

