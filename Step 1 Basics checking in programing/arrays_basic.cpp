// Arrays - Basic Operations
// Contributor: Komal
// Time Complexity: O(n) for traversal, O(1) for other operations

#include <iostream>
using namespace std;

/*
  Prints all elements of the array
  Time Complexity: O(n)
*/
void printElements(int arr[], int n) {
    for (int i = 0; i < n; i++) {
        cout << arr[i] << " ";
    }
    cout << endl;
}

/*
  Inserts an element at the end of the array
  Time Complexity: O(1)
*/
void insertAtEnd(int arr[], int &n, int element) {
    arr[n] = element;
    n++;
}

/*
  Finds element at a given index
  Time Complexity: O(1)
*/
int findElementAtIndex(int arr[], int n, int index) {
    if (index < 0 || index >= n) {
        return -1; // Invalid index
    }
    return arr[index];
}

/*
  Deletes the array logically
  Time Complexity: O(1)
*/
void deleteArray(int &n) {
    n = 0;
}
