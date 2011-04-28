__hg_ps1 ()
{
    if [ "$(hg root 2> /dev/null)" ]; then
    printf "$1" "$(hg branch)"
    fi
}

export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w$(__hg_ps1 " \[\033[1;31m\](%s)\[\033[0m\]")\[\033[00m\]\$ '

# hg_dirty() {
#     hg status --no-color 2> /dev/null \
#     | awk '$1 == "?" { print "?" } $1 != "?" { print "!" }' \
#     | sort | uniq | head -c1
# }

