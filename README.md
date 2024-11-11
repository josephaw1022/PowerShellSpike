# PowerShell Spike

This repository is a collection of PowerShell scripts designed for learning, experimentation, and practical demonstrations. It covers a range of foundational to advanced PowerShell concepts, organized as individual `.ps1` files for easy reference and reusability.

## Overview

The scripts in this repository serve as examples and exercises for various PowerShell features and techniques. They include fundamental concepts such as control flow, working with objects and arrays, and interacting with JSON and APIs, as well as more advanced topics like custom class creation and testing.

Each script is standalone, allowing you to explore specific features without dependencies on other scripts. Together, they provide a comprehensive set of examples for anyone looking to enhance their PowerShell skills.

## Key Topics Covered

- **Basics of PowerShell**: Introduction to fundamental commands, syntax, and constructs.
- **Control Flow**: Examples of `if`, `elseif`, `else`, `switch`, and loop structures.
- **Working with Objects and Arrays**: Demonstrates object creation, manipulation, and the use of arrays in PowerShell.
- **Classes and Inheritance**: A deeper look into object-oriented programming (OOP) in PowerShell, including classes, inheritance, and custom methods.
- **API Calls and JSON Handling**: Examples of interacting with web APIs and parsing JSON data.
- **Testing with Pester**: Unit tests are included for certain scripts, showcasing testing practices with the Pester framework.

## Getting Started

1. **Install PowerShell and Pester**: If running in a Linux environment, use the `install-powershell.sh` script to automate the installation of PowerShell and Pester.
   ```bash
   ./install-powershell.sh
   ```
2. **Run Scripts**: Execute individual scripts using PowerShell. For example:
   ```powershell
   pwsh ./001-hello-world.ps1
   ```



## Test 


To run tests, use the following command in PowerShell:

```powershell
 Invoke-Pester
```
