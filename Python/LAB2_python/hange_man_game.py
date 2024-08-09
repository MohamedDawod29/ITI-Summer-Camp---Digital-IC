def game():
    word = input("Enter the word: ").lower()
    guessed_letters = []
    trials = len(word)

    print("You have", trials, "attempts remaining.")

    while (1):
        display_word = ""
        for c in word:
            if c in guessed_letters:
                display_word = display_word + c
            else:
                display_word = display_word + "_"

        print("\nWord:", display_word)

        if display_word == word:
            print("Congratulations! You guessed the word correctly!")
            break

        elif trials == 0:
            print("Game over! You ran out of attempts.")
            print("The word was:", word)
            break

        guess = input("Enter a letter: ").lower()

        if len(guess) != 1 or not guess.isalpha():
            print("Please enter a single letter!")
            continue

        elif guess in guessed_letters:
            print("You already guessed that letter!")
            continue

        guessed_letters.append(guess)

        if guess in word:
            print("Correct guess!")
        else:
            trials = trials - 1
            print("Incorrect guess! Attempts remaining:", trials)



game()