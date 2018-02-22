# Remove last opened message when opened
clear

# Set terminal prompt
export PS1="Matt> "

# Set terminal title
PROMPT_COMMAND='echo -en "\033]0;Matt Kline - Terminal\a"'


# EASE OF USE
#--------------------------------------------------------------

# Show directory contents after stepping into
cd() { builtin cd "$@"; ls -FG; } 

# Show directories in different color with directory marker
alias ls='ls -FG'

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

# Full directory listing
alias listAll='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''

# Open current directory in Finder
alias openInFinder='open -a Finder ./'

# Search for a specific file
alias qfind="find . -name "

# Change file permissions to prefered
alias updatePermissions='chmod -R a-x,o-w,+X $1/'


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
