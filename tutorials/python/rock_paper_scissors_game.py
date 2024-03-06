import random


# start the get_choices fuction that holds the player and computer choices
def get_choices():
    # input for the player to add their choice
    player_choice = input("Enter your choice(rock, paper, scissors): ")
    # options dictionary of the game choices
    options = ["rock", "paper", "scissors"]
    # create the computer to choice a random choice
    computer_choice = random.choice(options)
    choices = {"player": player_choice, "computer": computer_choice}
    return choices

# start a check win fuction that check who wins the game
def check_win(player, computer):
    # print the choies that where chosen by player and computer
    print(f"You chose {player} and the computer chose {computer}")
    if player == computer:
        return "It's a tie"
    # elif player == "rock" and computer == "scissors":
    #         return "Rock smashes scissors!"
    # elif player == "scissors" and computer == "paper":
    #         return "Scissors cuts paper!"
    # elif player == "paper" and computer == "rock":
    #     return "Paper covers rock!"
    elif player == "rock":
        if computer == "scissors":
            return "Rock smashes scissors! You win "
        else:
            "Paper covers rock! You lose"
    elif player == "paper":
        if computer == "rock":
            "Paper covers rock! You win"
        else:
            "Scissors cuts paper! You lose"
    elif player == "scissors":
        if computer == "paper":
            return "Scissors cuts paper! You win"
        else:
            "Rock smashes scissors! You lose"

choices = get_choices()
result = check_win(choices["player"], choices["computer"])
print(result)

