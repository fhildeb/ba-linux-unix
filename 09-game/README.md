# Practical Session 9: Puzzle Game

## Features

- `lastlogin.sh`: Program to save and print last user login times from system data
- `number_guess.sh` Game to guess a number between 0 and 99 that was randomly choosen automatically. The user has 10 attempts, otherwise the terminal will win the game.

## Last Login

### Read Option

> Will add a `lastlog` file to the folder where the date is stored on the first use of the app, but wont write further logins.

```bash
bash lastlogin.sh
```

```bash
Sa 7 Jan 2023 16:26:09 CET
```

### Write Option

> Adds current date and time at the end of the `lastlog` file

```bash
bash lastlogin.sh -w
```

```bash
Sa 7 Jan 2023 16:26:09 CET
```

## Number Guess Puzzle

```bash
bash number_guess.sh
```

```bash
I have come up with a random number! Try to guess...
Attempt 1 - Your choice is:
50
The number 50 is bigger than mine!
Attempt 2 - Your choice is:
25
The number 25  is smaller than mine!
Attempt 3 - Your choice is:
32
The number 32 is bigger than mine!
Attempt 4 - Your choice is:
28
The number 28  is smaller than mine!
Attempt 5 - Your choice is:
30
The number 30 is bigger than mine!
Attempt 6 - Your choice is:
29
Congratulations! Number found after 6 attempts!
Press [Enter] to exit.
```
