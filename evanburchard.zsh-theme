##################################personal config
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export EDITOR=vim

export CLICOLOR=1

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


function git_prompt_info() {
  if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(parse_git_dirty)${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

CRUNCH_BRACKET_COLOR="%{$fg[white]%}"
CRUNCH_TIME_COLOR="%{$fg[yellow]%}"
CRUNCH_DIR_COLOR="%{$fg[cyan]%}"
CRUNCH_GIT_BRANCH_COLOR="%{$fg[green]%}"
CRUNCH_GIT_CLEAN_COLOR="%{$fg[green]%}"
CRUNCH_GIT_DIRTY_COLOR="%{$fg[red]%}"
# These Git variables are used by the oh-my-zsh git_prompt_info helper:
ZSH_THEME_GIT_PROMPT_PREFIX="$CRUNCH_BRACKET_COLOR ($(parse_git_dirty)"
ZSH_THEME_GIT_PROMPT_SUFFIX="$CRUNCH_BRACKET_COLOR)"
ZSH_THEME_GIT_PROMPT_CLEAN="$CRUNCH_GIT_CLEAN_COLOR"
ZSH_THEME_GIT_PROMPT_DIRTY="$CRUNCH_GIT_DIRTY_COLOR"

# Our elements:
CRUNCH_DIR_="$CRUNCH_DIR_COLOR%~\$(git_prompt_info)"
CRUNCH_PROMPT=""
# Put it all together!
PROMPT="$CRUNCH_DIR_ $CRUNCH_PROMPT%{$reset_color%}"

export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
