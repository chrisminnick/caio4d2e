function squareItUp(startingNumber) {
  // Termination conditions, invalid input
  if (typeof startingNumber != 'number' || startingNumber - Number <= 1) {
    return -1; // exit the function
  }
  square = startingNumber * startingNumber;
  // Base condition
  if (square > 1000000) {
    console.log(square); // Print the final value
  } else {
    // If the base condition isn't met, do it again.
    squareItUp(square);
  }
}
squareItUp(3);
