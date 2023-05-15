export PS1_OLD="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$"
export PROMPT_DIRTRIM=2
# Using highlight (http://www.andre-simon.de/doku/highlight/en/highlight.html)

if [ ! -d $(eval echo "~")/.fzf ] 
then
    sudo apt install fzf
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
fi

if [ ! -d $(eval echo "~")/.vim ]
then
     curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash &&
    source ~/.fzf.bash &&
    # enabling fzf key bindings for bash
    source /usr/share/doc/fzf/examples/key-bindings.bash &&
    # enabling fuzzy finder autocompletition for bash, if failded check if it exists
    source /usr/share/doc/fzf/examples/completion.bash

# installing bash git prompt support
if [ ! -d "$HOME/.bash-git-prompt" ]; then
    git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
fi
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source $HOME/.bash-git-prompt/gitprompt.sh
fi
