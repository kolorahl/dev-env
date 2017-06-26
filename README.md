# dev-env #

Originally this was two separate repositories: `dotfiles` and `profiles`. They
have been merged into a single project that allows me much better access and
distribution of how I can get my dev environment up and running from scratch.

## Installation ##

At present, this is created for the specific purpose of setting up Mac OS X
laptops with common tools and configurations that I use for most of my work.
Simply execute the the `install.osx.sh` script and away you go. Some commands
might require super user privileges for installing certain components.

Eventually this will become a Docker or rkt image, useful for quickly getting
a completely reproducible and consistent development environment.

## Homebrew (Mac OS X) ##

The first tool to be installed, for Mac OS X, is [Homebrew](https://brew.sh/).
This allows the rest of the installation in a Mac OS X environment to be
completed with significantly less headache.

## git ##

Obviously one of the main tools downloaded is [git](https://git-scm.com/). Many
other tools and features to be installed, not to mention 99+% of my development,
use git.

## emacs ##

My personal favorite editor, although I do like using it with the addition of
"Evil Mode", which adds vim bindings when in Evil Mode. I like the ease of
navigating a file and vim's search-and-replace functionality.

## rbenv ##

Much of my development, and a significant number of tools I use, require Ruby.
Mac OS X now comes with Ruby pre-installed, but it's not up-to-date and it's not
simple to keep it up-to-date. Therefore we use Homebrew and [rbenv](https://github.com/rbenv/rbenv)
to install and maintain our own set of Rubies.

Why not [rvm](https://rvm.io/)? Well, it is more powerful in two major ways:

1. You can use `rvm` to install Rubies, whereas you need a separate plugin to do
so `rbenv`.
2. You can omit the `bundle exec` command prefix in Ruby projects because `rvm`
maintains the gemsets for you and will automatically use what your project
requires... most of the time.

Personally I like explicitly running `bundle exec` even though it's slightly
more of a pain. I have run into infrequent situations where `rvm` will not load
the proper gems and I'll need to use `bundle exec` regardless, which in my mind
makes it pointless to have in those cases since that's one of the two major
selling points in my mind. Plus, the low overhead to install and run `rbenv`
makes it a good choice even for remote provisioning, and so I can keep better
parity between my local and remote environments using `rbenv`.

## tmux ##

I love me my windows managers, and specifically I really like [tmux](https://github.com/tmux/tmux/wiki).
I use [tmuxinator](https://github.com/tmuxinator/tmuxinator) with it to easily
create tmux window configurations ahead of time and then boot up to them when
necessary.

**Note**: There is an issue with an update to how `tmux` performs `has-session`
in version 2.5 that breaks `tmuxinator`, so this script is specifically using
`tmux` version 2.4 until a fix is released in version 2.6.

## fish ##

I have come to enjoy the [fish](https://fishshell.com/) shell very much, and so
instead of using the amazing [zsh](http://ohmyz.sh/) that I had been using for
many years, I am now switching fully to fish.

## Necessary? ##
