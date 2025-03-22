// Rock, Paper, Scissors Game

/* Rock, Paper, or Scissors
Rock paper scissors is a classic two player game. Each player chooses either rock, paper, or scissors. The items are compared, and whichever player chooses the more powerful item wins.

The possible outcomes are:

Rock destroys scissors.
Scissors cut paper.
Paper covers rock.
If there’s a tie, then the game ends in a draw.
Our code will break the game into four parts:

Get the user’s choice.
Get the computer’s choice.
Compare the two choices and determine a winner.
Start the program and display the results.*/


//Codecademy Answer
/*const getUserChoice = (userInput) => {
  userInput = userInput.toLowerCase();
  if (
    userInput === "rock" ||
    userInput === "scissors" ||
    userInput === "paper"
  ) {
    return userInput;
  } else {
    return "Invalid choice. Please select rock, paper, or scissors.";
  }
}
// console.log(getUserChoice("scissors"));
// console.log(getUserChoice("paper"));
// console.log(getUserChoice("rock"));

function getComputerChoice() {
  let random = Math.floor(Math.random() * 3);
  switch (random) {
    case 0:
      return "rock";
    case 1:
      return "paper";
    case 2:
      return "scissors";
  }
}

// console.log(getComputerChoice());

function determineWinner(userChoice, computerChoice) {
  if (userChoice === computerChoice) {
    return "The game is a tie!";
  }; 
  switch (userChoice) {
  case 'rock':
    return (computerChoice === 'paper') ? 'The computer won!' : 'You won!';
  case 'paper':
    return (computerChoice === 'scissors') ? 'The computer won!' : 'You won!';
  case 'scissors':
    return (computerChoice === 'rock') ? 'The computer won!' : 'You won!';
}
}
// console.log(determineWinner('paper', 'scissors')); // prints something like 'The computer won!'
// console.log(determineWinner('paper', 'paper')); // prints something like 'The game is a tie!'
// console.log(determineWinner('paper', 'rock')); // prints something like 'The user won!'

const playGame = () => {
   const userChoice = getUserChoice('scissors');
   const computerChoice = getComputerChoice();
   console.log('You threw: ' + userChoice);
   console.log('The computer threw:' + computerChoice);
   console.log(determineWinner(userChoice, computerChoice));
};
 
playGame();*/






//Create a new function named getUserChoice that takes in a parameter userInput. Inside the function, check if the input is valid (either "rock", "paper", or "scissors"). If it is valid, return the input. If it is not valid, throw an error with a message indicating that the input is invalid.
const getUserChoice = (userInput) => {
  if (!userInput || typeof userInput !== "string") {
    throw new Error('Invalid input! Please provide a valid string input.');
  }
  userInput = userInput.toLowerCase();
  const validChoices = ["rock", "paper", "scissors"];
  if (validChoices.includes(userInput)) {
    return userInput;
  } else {
    throw new Error(
      'Invalid input! Please enter "rock", "paper", or "scissors".'
    );
  }
};

// Example usage 
/* try {
  console.log(getUserChoice("rock")); // Valid input
} catch (error) {
  console.error(error.message);
}
try {
  console.log(getUserChoice("invalidChoice")); // Invalid input
} catch (error) {
  console.error(error.message);
}*/ 

// Create a new function named getComputerChoice with no parameters. Inside its block, utilize Math.random() and Math.floor() to get a whole number between 0 and 2. Then, depending on the number, return either 'rock', 'paper', or 'scissors'.
const getComputerChoice = () => {
  const choices = ["rock", "paper", "scissors"];
  const randomIndex = Math.floor(Math.random() * choices.length);
  return choices[randomIndex];
};  

// Example usage
// console.log(getComputerChoice()); // Random choice between rock, paper, or scissors 


// Create a function named determineWinner that takes two parameters named userChoice and computerChoice. This function will compare the two choices played and then return if the human player won, lost, or tied.

/**
 * A function that takes two parameters, userChoice and computerChoice, and determines which player is the winner.
 * @param {string} userChoice The choice made by the human player.
 * @param {string} computerChoice The choice made by the computer.
 * @returns {string} A string indicating the outcome of the game.
 */
const userChoise = getUserChoice()
const computerChoice = getComputerChoice()
console.log(`User Choice: ${userChoise}`);
console.log(`Computer Choice: ${computerChoice}`);
/* 
const determineWinner = (userChoice, computerChoice) => {
  // Check if the game is a tie
  if (userChoice === computerChoice) {
    return "The game is a tie!";
  }

  // Determine the winner if the user chose rock
  if (userChoice === "rock") {
    if (computerChoice === "paper") {
      return "The computer won!";
    } else {
      return "You won!";
    }
  }

  // Determine the winner if the user chose paper
  if (userChoice === "paper") {
    if (computerChoice === "scissors") {
      return "The computer won!";
    } else {
      return "You won!";
    }
  }

  // Determine the winner if the user chose scissors
  if (userChoice === "scissors") {
    if (computerChoice === "rock") {
      return "The computer won!";
    } else {
      return "You won!";
    }
  }
  } */

const determineWinner = (userChoice, computerChoice) => {
  // Check if the game is a tie
  if (userChoice === computerChoice) {
    return "The game is a tie!";
  }

  // Define win conditions
  const winConditions = {
    rock: "scissors",
    paper: "rock",
    scissors: "paper",
  };

  // Determine the winner
  if (winConditions[userChoice] === computerChoice) {
    return "You won!";
  } else {
    return "The computer won!";
  }
};


/* Create a function named playGame.

Inside the playGame() function, create a variable named userChoice set equal to the result of calling getUserChoice(), passing in either 'rock', 'paper', or 'scissors' as an argument.

Create another variable named computerChoice, and set it equal to the result of calling getComputerChoice().

Inside the playGame() function, call the determineWinner() function. Pass in the userChoice and computerChoice variables as its parameters. Make sure to put this function call inside of a console.log() statement so you can see the result.

Then, to start the game, call the playGame() function on the last line of your program.

Make this game better by adding a secret cheat code. If a user types 'bomb' as their choice, then make sure they win, no matter what.
 */


// Import the readline module to get user input
const readline = require("readline");

// Create an interface for user input
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

// Function to play the game
const playGame = () => {
  rl.question("Enter your choice (rock, paper, scissors): ", (userInput) => {
    try {
      if (!userInput) {
        throw new Error("Input cannot be empty. Please enter a valid choice.");
      }
      const userChoice = getUserChoice(userInput);
      const computerChoice = getComputerChoice();
      console.log(`User Choice: ${userChoice}`);
      console.log(`Computer Choice: ${computerChoice}`);
      console.log(determineWinner(userChoice, computerChoice));
    } catch (error) {
      console.error(error.message);
    } finally {
      rl.close(); // Close the readline interface
    }
  });
};

// Start the game
playGame();