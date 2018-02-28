# Remove last opened message when opened
clear

# Set terminal prompt
export PS1="Matt> "

# Set terminal title
PROMPT_COMMAND='echo -en "\033]0;Matt Kline - Terminal\a"'


# EASE OF USE
#--------------------------------------------------------------

# Show directory contents after stepping into
cd() { builtin cd "$@"; ls -FGl; } 

# Show directories in different color with directory marker and permissions
alias ls='ls -FGl'

# Allow creation of intermediate directories if specified
alias mkdir='mkdir -p'

# Count of non-hidden files in current directory
alias numFiles='echo $(ls -1 | wc -l)'

# Show all hidden files in Finder
alias showHiddenFiles='defaults write com.apple.finder ShowAllFiles TRUE'

# Hide all hidden files in Finder
alias hideHiddenFiles='defaults write com.apple.finder ShowAllFiles FALSE'

# Show current path
alias path='pwd'

# Show path to a specific files
alias showFilePath='echo $(cd $(dirname "$1") && pwd -P)/$(basename "$1")'

# Find all executable files
alias showExecutables='type -all'

# Full directory listing
alias listAll='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''

# Open current directory in Finder
alias openInFinder='open -a Finder ./'

# Search for a specific file
alias search="find . -name "

# Search for a specific string at the start a file
searchStart () { /usr/bin/find . -name "$@"'*' ; }

# Search for a specific string at the end of a file
searchEnd () { /usr/bin/find . -name '*'"$@" ; }

# Use spotlight search
spotlightSearch () { mdfind "kMDItemDisplayName == '$@'wc"; }

# Change file permissions to prefered
alias updatePermissions='chmod -R a-x,o-w,+X $1/'

# Restart Finder
alias restartFinder='killall Finder'

# Extract most know archives with one command
extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}


# NETWORKING
#--------------------------------------------------------------

# Run speed test
alias network='echo "Speed Test" && speedtest >> speed.txt && cat speed.txt | grep "load:" && rm speed.txt'

# Get public and local IP addresses
alias getIP='echo "Local IP" && ipconfig getifaddr en0 && echo "Public IP" && curl ifconfig.me'


# PROGRAMMING
#---------------------------------------------------------------

# Compile and run java file
alias javaRun='javac *.java && java $1'

# Compile and run Kotlin file
alias kotlinRun='Kotlinc *.kt && kotlin $1'

# Compile and run r file
alias rRun='R CMD BATCH *.r'

# Compile and run c file
alias cRun='gcc *.c -o $@ && ./$1'
