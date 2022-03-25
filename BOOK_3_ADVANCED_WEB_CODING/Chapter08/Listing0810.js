function Person() {
  this.eyes = 2;
  this.ears = 2;
  this.arms = 2;
  this.hands = 2;
  this.feet = 2;
  this.legs = 2;
  this.species = 'Homo sapien';
}

const willieNelson = new Person();
const johnnyCash = new Person();
const patsyCline = new Person();

// Person needs more properties!
Person.prototype.knees = 2;
Person.prototype.toes = 10;
Person.prototype.elbows = 2;

// Check the values of existing objects for the new properties
document.write(patsyCline.toes); // outputs 10
