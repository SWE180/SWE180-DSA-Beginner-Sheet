// DSA Beginner Sheet URL: https://www.swe180.com/dsa-beginner-sheet

import Foundation

/*
Type of input
Difficulty: Easy

Given an input A , print the data type of the input A.
eg:-
Sequence of digits -- int
Sequence of digits with a dot -- float
Sequence of chars  -- string
Single non-digit char --- char

Example 1:
Input: A = "12"
Output: "int"
Explanation: The input consists only of digits.

Example 2:
Input: A = "gfg"
Output: "string"
Explanation: The input consists only of characters.

Your Task:
You don't need to read or print anything. Your task is to complete the function FindInputType() which takes A as input parameter and returns data type of A.

Expected Time Complexity: O(|A|)
Expected Space Complexity: O(1)

Constraints:
1 <= |A| <= 1000
*/

// Approach 1: Using conditional checks - Brute Force Approach
// This approach uses a series of if-else statements to check the input type.
// It first tries to convert the input to an Int, then a Double. If both fail, it checks if the input is a single character.
// If it's a single character and not a digit, it's classified as a Char. Otherwise, it's a String.
func determineType(input: String) -> String {
    if let _ = Int(input) {
        return "int"
    } else if let _ = Double(input) {
        return "float"
    } else if input.count == 1 {
        return "char"
    } else {
        return "string"
    }
}

// Approach 2: Using switch statement - Better Approach
// This approach uses a switch statement to achieve the same result as the first approach.
// It checks for Int, Double, and then uses a default case to handle Char and String.
func determineTypeSwitch(input: String) -> String {
    switch input {
    case _ where Int(input) != nil:
        return "int"
    case _ where Double(input) != nil:
        return "float"
    case _ where input.count == 1:
        return "char"
    default:
        return "string"
    }
}

// Approach 3: Using regular expressions - Optimized Approach
// This approach uses regular expressions to define patterns for integers, doubles, and single characters.
// It can be more efficient and flexible for complex pattern matching.
func determineTypeRegex(input: String) -> String {
    let intRegex = "^-?\\d+$"
    let doubleRegex = "^-?\\d*\\.\\d+$"
    let charRegex = "^\\D$"
    
    if input.range(of: intRegex, options: .regularExpression) != nil {
        return "int"
    } else if input.range(of: doubleRegex, options: .regularExpression) != nil {
        return "float"
    } else if input.range(of: charRegex, options: .regularExpression) != nil {
        return "char"
    } else {
        return "string"
    }
}

// Example usage
print("Enter an input:")
if let input = readLine() {
    print("Type (Approach 1): \(determineType(input: input))")
    print("Type (Approach 2): \(determineTypeSwitch(input: input))")
    print("Type (Approach 3): \(determineTypeRegex(input: input))")
} else {
    print("Invalid input")
}
