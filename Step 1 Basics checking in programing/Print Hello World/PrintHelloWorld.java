// DSA Beginner Sheet URL: https://www.swe180.com/dsa-beginner-sheet

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

/*
Display the most famous phrase at the beginning of any programming language, "Hello World" (without quotes).

Example:

Input:
Output:
Hello World
Explanation:
Print Hello World on a single line.
Your Task:
You don't need to read any input. Your task is to complete the functions which print 'Hello World' on a single line.

Expected Time Complexity: O(1)
Expected Auxiliary Space: O(1)
*/

// ---
// Approach 1: Using System.out.println() - The most straightforward and widely used method.
// This is the simplest and most common way to print to the console.
class HelloWorld {
    public static void printHelloWorld1() {
        System.out.println("Hello World");
    }

    // ---
    // Approach 2: Using System.out.printf() - For formatted output.
    // This method is useful when you need to format strings and variables, similar to C's printf.
    public static void printHelloWorld2() {
        System.out.printf("%s%n", "Hello World");
    }

    // ---
    // Approach 3: Using java.io.PrintWriter - A flexible way to handle output streams.
    // This is often used for writing to files, but it also works for the console and provides more control.
    public static void printHelloWorld3() throws UnsupportedEncodingException {
        PrintWriter writer = new PrintWriter(System.out, true);
        writer.println("Hello World");
        writer.close();
    }

    // ---
    // Approach 4: Using System.out.write() - A low-level method using byte streams.
    // This method prints the raw bytes of the string to the console and requires a try-catch block for error handling.
    public static void printHelloWorld4() throws IOException {
        String message = "Hello World\n";
        byte[] bytes = message.getBytes();
        System.out.write(bytes);
        System.out.flush();
    }

    public static void main(String[] args) {
        System.out.println("--- Approach 1 Output ---");
        printHelloWorld1();

        System.out.println("\n--- Approach 2 Output ---");
        printHelloWorld2();

        System.out.println("\n--- Approach 3 Output ---");
        try {
            printHelloWorld3();
        } catch (UnsupportedEncodingException e) {
            System.out.println("Exception caught "+e.getMessage());
        }

        System.out.println("\n--- Approach 4 Output ---");
        try {
            printHelloWorld4();
        } catch (IOException e) {
            System.out.println("Exception caught "+e.getMessage());
        }
    }
}
