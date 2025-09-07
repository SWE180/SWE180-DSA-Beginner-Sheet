// DSA Beginner Sheet URL: https://www.swe180.com/dsa-beginner-sheet

import Foundation

/*
Display the most famous phrase at the of beginning any programming language, "Hello World" (without Quotes).

Example:

Input:
Output:
Hello World
Explanation:
Print Hello World on a single line.
Your Task:
You don't need to read any input. Your task is to complete the function printHelloWorld() which does not take any input and prints 'Hello World'.

Expected Time Complexity: O(1)
Expected Auxiliary Space: O(1)
*/

// Approach 1: Using print() function - Optimized Approach
// This is the most straightforward and efficient way to print "Hello World" in Swift.
func printHelloWorld() {
    print("Hello World")
}
printHelloWorld()

// Approach 2: Using debugPrint() function - Optimized Approach
// This approach is similar to print(), but it's primarily used for debugging purposes.
// It provides additional information in the output, which can be helpful during development.
func debugPrintHelloWorld() {
    debugPrint("Hello World")
}
debugPrintHelloWorld()

// Approach 3: Using Swift's String Interpolation - Optimized Approach
// This approach uses string interpolation to print the message. While it's slightly more verbose,
// it demonstrates how to embed variables and expressions within a string.
func stringInterpolationHelloWorld() {
    let message = "Hello World"
    print("\(message)")
}
stringInterpolationHelloWorld()
