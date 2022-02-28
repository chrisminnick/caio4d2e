function greetVisitor(phrase) {
  var welcome = phrase + '. Great to see you!'; // Local variable
  var sayWelcome = function () {
    alert(welcome);
  };
  return sayWelcome;
}
var personalGreeting = greetVisitor('Hola Amiga');
personalGreeting(); // alerts "Hola Amiga. Great to see you!"
