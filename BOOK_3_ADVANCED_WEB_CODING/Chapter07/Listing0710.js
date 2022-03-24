function squareItUp(startingNumber) {
  var square = startingNumber * startingNumber;
  console.log(square);
  squareItUp(square);
}
