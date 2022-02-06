export PS1_OLD="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$"
export PROMPT_DIRTRIM=2
# Using highlight (http://www.andre-simon.de/doku/highlight/en/highlight.html)

if [ ! -d $(eval echo "~")/.fzf ] 
then
    sudo apt install -y fzf
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
fi
