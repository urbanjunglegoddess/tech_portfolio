
console.log("hello., World!");
console.error("hello., World!");
console.warn("hello., World!");

// Variables
// let, const


let age = 30;
age = 31;

console.log(age);

//Data Types

// String, Numbers, Boolean, null, undefined, symbol
const name = 'John';
const rating = 4.5;
const isCool = true;
const x = null;
const y = undefined;
let z;

console.log(typeof name);
console.log(typeof rating);
console.log(typeof isCool);
console.log(typeof x);
console.log(typeof y);
console.log(typeof z);


// Strings
// Concatenation
console.log('My name is ' + name + ' and I am ' + age);

// Template String/Template Literal
const hello = `My name is ${name} and I am ${age}`;
console.log(hello);

console.log(hello.length)
console.log(hello.toUpperCase());
console.log(hello.toLowerCase());
console.log(hello.substring(0, 5).toUpperCase());
console.log(hello.split(''));

// Arrays - variables that hold multiple values
const numbers = new Array(1,2,3,4,5);
console.log(numbers);

const fruits = ['apples', 'oranges', 'pears', 10, true];
console.log(fruits);
console.log(fruits[1]);
fruits[3] = 'grapes';
console.log(fruits);

fruits.push('mangos');
console.log(fruits);
fruits.unshift('strawberries');
console.log(fruits);
fruits.pop();
console.log(fruits);
console.log(Array.isArray(fruits));
console.log(fruits.indexOf('oranges'));

// Object Literals
const person = {
    firstName: 'John',
    lastName: 'Doe',
    age: 30,
    hobbies: ['music', 'movies', 'sports'],
    address: {
        street: '50 main st',
        city: 'Boston',
        state: 'MA'
    }
}

console.log(person);
console.log(person.firstName, person.lastName);
console.log(person.hobbies[1]);
console.log(person.address.city);

// Destructuring
const { firstName, lastName, address: { city } } = person;
console.log(firstName);
console.log(city);

person.email = 'john@gmail.com';
console.log(person);

// Arrays of Objects
const todos = [
    {
        id: 1,
        text: 'Take out trash',
        isCompleted: true
    },
    {
        id: 2,
        text: 'Meeting with boss',
        isCompleted: true
    },
    {
        id: 3,
        text: 'Dentist appt',
        isCompleted: false
    }
];

console.log(todos);
console.log(todos[1].text);

// JSON
const todoJSON = JSON.stringify(todos);
console.log(todoJSON);


// For
for(let i = 0; i < 10; i++) {
    console.log(`For Loop Number: ${i}`);
}

// While
let i = 0;
while(i < 10) {
    console.log(`While Loop Number: ${i}`);
    i++;
}

// Loop Through Arrays
for(let i = 0; i < todos.length; i++) {
    console.log(todos[i].text);
}

for(let todo of todos) {
    console.log(todo.id);
}

// High Order Array Methods
// forEach, map, filter
// forEach
todos.forEach(function(todo) {
    console.log(todo.isCompleted);
});
// map
const todoText = todos.map(function(todo) {
    return todo.text;
}
);
console.log(todoText);
// filter
const todoCompleted = todos.filter(function(todo) {
    return todo.isCompleted === true;
}
);
console.log(todoCompleted);
// filter and map
const todoCompletedText = todos.filter(function(todo) {
    return todo.isCompleted === true;}
).map(function(todo) {
    return todo.text;}
);
console.log(todoCompletedText);

// Conditionals
// if, else, else if, ternary operator, switch
const a = 10;
if(a === 10) {
    console.log('x is 10');
}

const b = 20;
if(b === 10) {
    console.log('y is 10');
}
else {
    console.log('y is NOT 10');
}

const c = 30;
if(c === 10) {
    console.log('z is 10');
}
else if(c > 10) {
    console.log('z is greater than 10');
}
else {
    console.log('z is less than 10');
}

// Ternary Operator
const d = 10;
const color = d > 10 ? 'red' : 'blue';
console.log(color);

// Switch
switch(color) {
    case 'red':
        console.log('color is red');
        break;
    case 'blue':
        console.log('color is blue');
        break;
    default:
        console.log('color is NOT red or blue');
        break;
}

// Functions
function addNums(num1, num2) {
    return num1 + num2;
}
console.log(addNums(5, 4));

// Arrow Function
const addNums = (num1, num2) => num1 + num2;
console.log(addNums(5, 4));

// Object-Oriented Programming
// Constructor Function
function Person(firstName, lastName, dob) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.dob = new Date(dob);
    this.getBirthYear = function() {
        return this.dob.getFullYear();
    }
    this.getFullName = function() {
        return `${this.firstName} ${this.lastName}`;
    }
}

// Instantiate Object
const person1 = new Person('John', 'Doe', '4-3-1980');
const person2 = new Person('Mary', 'Smith', '3-6-1970');
console.log(person1);
console.log(person2.dob);
console.log(person1.getBirthYear());
console.log(person1.getFullName());


// Prototypes
function Person(firstName, lastName, dob) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.dob = new Date(dob);
}
Person.prototype.getBirthYear = function() {
    return this.dob.getFullYear();
}
Person.prototype.getFullName = function() {
    return `${this.firstName} ${this.lastName}`;
}

// Instantiate Object
const person1 = new Person('John', 'Doe', '4-3-1980');
const person2 = new Person('Mary', 'Smith', '3-6-1970');
console.log(person1);
console.log(person2.dob);
console.log(person1.getBirthYear());
console.log(person1.getFullName());


// ES6 Classes
class Person {
    constructor(firstName, lastName, dob) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.dob = new Date(dob);
    }
    getBirthYear() {
        return this.dob.getFullYear();
    }
    getFullName() {
        return `${this.firstName} ${this.lastName}`;
    }
}

// Instantiate Object
const person1 = new Person('John', 'Doe', '4-3-1980');
const person2 = new Person('Mary', 'Smith', '3-6-1970');
console.log(person1);
console.log(person2.dob);
console.log(person1.getBirthYear());


// DOM
// Single Element Selectors
// document.getElementById()
console.log(document.getElementById('my-form'));
const form = document.getElementById('my-form');
console.log(form);
console.log(document.querySelector('h1'));

// Multiple Element Selectors
// document.querySelectorAll()
console.log(document.querySelectorAll('.item'));
console.log(document.getElementsByClassName('item'));
console.log(document.getElementsByTagName('li'));

const items = document.querySelectorAll('.item');
items.forEach((item) => console.log(item));

// Manipulating the DOM
const ul = document.querySelector('.items');
// ul.remove();
// ul.lastElementChild.remove();
ul.firstElementChild.textContent = 'Hello';
ul.children[1].innerText = 'Brad';
ul.lastElementChild.innerHTML = '<h1>Hello</h1>';

const btn = document.querySelector('.btn');
btn.style.background = 'red';

// Events
// Mouse Event
btn.addEventListener('click', (e) => {
    e.preventDefault();
    console.log(e.target.className);
    document.getElementById('my-form').style.background = '#f4f4f4';
    document.querySelector('body').classList.add('bg-dark');
    ul.lastElementChild.innerHTML = '<h1>Changed</h1>';
});

// Keyboard Event
const nameInput = document.querySelector('#name');
nameInput.addEventListener('input', (e) => {
    console.log(e.target.value);
});

// Form Event
const myForm = document.querySelector('#my-form');
const nameInput = document.querySelector('#name');
const emailInput = document.querySelector('#email');
const msg = document.querySelector('.msg');
const userList = document.querySelector('#users');

myForm.addEventListener('submit', onSubmit);

function onSubmit(e) {
}

// Local Storage
// set local storage item
localStorage.setItem('name', 'John');
localStorage.setItem('age', '30');

// set session storage item
sessionStorage.setItem('name', 'Beth');

// remove local storage item
localStorage.removeItem('name');

// get from storage
const name = localStorage.getItem('name');
const age = localStorage.getItem('age');

// clear local storage
localStorage.clear();
console.log(name, age);

document.querySelector('form').addEventListener('submit', function(e) {
    e.preventDefault();
    const task = document.getElementById('task').value;
    let tasks;
    if(localStorage.getItem('tasks') === null) {
        tasks = [];
    } else {
        tasks = JSON.parse(localStorage.getItem('tasks'));
    }
    tasks.push(task);
    localStorage.setItem('tasks', JSON.stringify(tasks));
    alert('Task saved');
});

const tasks = JSON.parse(localStorage.getItem('tasks'));
tasks.forEach(function(task) {
    console
    console
    console
    console
    console
    console
    console
    console
    console

    console.log(task);
}

// JSON

const todos = [
    {
        id: 1,
        text: 'Take out trash',
        isCompleted: true
    },
    {
        id: 2,
        text: 'Meeting with boss',
        isCompleted: true
    },
    {
        id: 3,
        text: 'Dentist appt',
        isCompleted: false
    }
];

console.log(JSON.stringify(todos));

// Asynchronous JavaScript
// Synchronous
// Asynchronous
// AJAX
// XHR Object
// Fetch API
// Promises
// Async / Await
// Error Handling
// Regular Expressions
// Modules
// Browser Object Model
// Window Object
// Document Object
// Form Validation
// Local & Session Storage
// Cookies



