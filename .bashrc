# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
alias toc='cd ~/wwwroot/toc'
alias golog='cd /opt/log/'
alias ntlog='cd /opt/log/neitui_hr'
alias gs='git status'
alias f='echo flush_all | nc 127.0.0.1 11211'
#used to watch log file
tailinfo(){
prefix="info-";
date=`date +%Y-%m-%d`;
suffix=".log";
filename=${prefix}${date}${suffix}
echo "raku"
if [ ! -f "$filename" ]; then
    echo "opening..."$filename;
    tail -f -n 50 $filename;
else
    echo "$filename not found";
fi
}

tailwarn(){
prefix="warn-";
date=`date +%Y-%m-%d`;
suffix=".log";
filename=${prefix}${date}${suffix}
echo "raku"
if [ ! -f "$filename" ]; then
    echo "opening..."$filename;
    tail -f -n 50 $filename;
else
    echo "$filename not found";
fi
}
