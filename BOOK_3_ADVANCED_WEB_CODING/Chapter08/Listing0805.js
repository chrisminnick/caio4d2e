const myObject = {
  var1: 'the value',
  var2: 'another value',
  var3: 'yet another',
};

// delete var2 from myObject
delete myObject.var2;

// try to write the value of var2
document.write(myObject.var2); // result is an error
