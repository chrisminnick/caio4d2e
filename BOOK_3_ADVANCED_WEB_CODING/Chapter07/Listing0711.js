function squareItUp(startingNumber) {
  square = startingNumber * startingNumber;
  if (square > 1000000) {
    console.log(square);
  } else {
    squareItUp(square);
  }
}
