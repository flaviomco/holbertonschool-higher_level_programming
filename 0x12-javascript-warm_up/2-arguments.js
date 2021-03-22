#!/usr/bin/node
let arguments;
if (process.argv.length < 3) {
  arguments = 'No argument';
} else if (process.argv.length === 3) {
  arguments = 'Argument found';
} else {
  arguments = 'Arguments found';
}
console.log(arguments);
