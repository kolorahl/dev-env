status --is-interactive; and . (rbenv init -|psub)

set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_color_branch magenta
set -g __fish_git_prompt_showupstream "informative"

set -g __fish_git_prompt_char_stagedstate " ● "
set -g __fish_git_prompt_char_dirtystate " ✚ "
set -g __fish_git_prompt_char_untrackedfiles " … "
set -g __fish_git_prompt_char_conflictedstate " ✖ "
set -g __fish_git_prompt_char_cleanstate " ✔ "

set -g __fish_git_prompt_color_dirtystate 2f96ff
set -g __fish_git_prompt_color_stagedstate yellow
set -g __fish_git_prompt_color_invalidstate red
set -g __fish_git_prompt_color_untrackedfiles $fish_color_normal
set -g __fish_git_prompt_color_cleanstate green
