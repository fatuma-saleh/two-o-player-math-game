# Example prompt

Player 1: What does 5 plus 3 equal?
> 9
Player 1: No!
P1: 2/3 vs P2: 3/3
------ NEW TURN ------

Player 2: What does 2 plus 6 equal?
> 8
Player2: YES! You are correct.
P1: 2/3 vs P2: 3/3
------ NEW TURN ------
... some time later ...
Player 1 Wins with a score of 1/3
------ GAME OVER ------
Good bye!

# P1 = console output, not Player1

* Create a 2-Player math game where players take turns to answer simple math addition problems.
* A new math question is generated for each turn by picking two numbers between 1 and 20
* The player whose turn it is is prompted the question and must answer correctly or lose a life.

* Player 1 asks question (input)
* calculate addition
* Player answer right/wrong

1. output the question
2. user input answer
3. output results of user input (yes/no)
4. output current score for both P1 & P2
  5. conditional, if player score == 0; end game
  5.1 end game \w text output
6. repeat

