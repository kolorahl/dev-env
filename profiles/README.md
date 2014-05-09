# profiles

This is my humble attempt to create a simple system for organizing profile
scripts. The concept is to have one or more logically separated profiles loaded
by the `main.profile` source script.

To use this, I add the following to the end of my `.zshrc` file:

    # Load additional sources
    if [ -e ~/profiles/main.profile ]; then
        # Use main.profile to load other profiles
        source ~/profiles/main.profile
    fi

If `profiles/main.profile` exists, I source it. Then `main.profile` will source
all other necessary profiles I want.
