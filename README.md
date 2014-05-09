# dev-env #

Originally this was two separate repositories: `dotfiles` and `profiles`. They
have been merged into a single project that allows me much better access and
distribution of how I can get my dev environment up and running from scratch.

## Package Installation ##

Future Release: Installs necessary packages, such as emacs24 and git. This part
should be constructed such that it is easy to add and modify the installation
command(s) per distribution.

## "dot" Files ##

Downloads custom "dot" files (files that begin with a dot '.'). This should only
occur after the necessary prerequisite packages are installed and available.

## Profile Scripts ##

Download custom profile scripts. These are executed by the rc startup script
downloaded in the previous phase. Specifically `main.profile` is sourced, and
whatever is added to that main profile script will be sourced as well. This
gives some freedom to install custom, lightweight profiles.

## Necessary? ##

Maybe not. There are tools like Vagrant which are far more feature-full and
allow you to setup an environment once, store it somewhere, and then load it up
elsewhere. With Vagrant, my only problem is that it creates virtual environments
and this project was built specifically for Chromebook [Crouton](https://github.com/dnschneid/crouton) environments,
meaning I can run everything locally instead of in their virtual environment. I
was also considering Chef or something, but that takes a bit too much work to
get set up and this was far faster and more straight-forward for me.

Eventually I may use Crouton's ability to tarball an environment and simply host
that on my GitHub or OneDrive. Then I could create new environments from the
tarball quick and easy.
