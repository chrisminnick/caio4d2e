function greetVisitor(phrase) {
  let welcome = phrase + '. Great to see you!'; // Local variable
  let sayWelcome = function () {
    alert(welcome);
  };
  return sayWelcome;
}
let personalGreeting = greetVisitor('Hola Amiga');
personalGreeting(); // alerts "Hola Amiga. Great to see you!"
