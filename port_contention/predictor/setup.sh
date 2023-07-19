# Download firefox version 90 depending on the OS

if [[ "$(uname -s)" == "Darwin" ]]; then

    if [ ! -f "Firefox 90.0.dmg" ]
    then
        wget https://ftp.mozilla.org/pub/firefox/releases/90.0/mac/en-US/Firefox%2090.0.dmg
    fi
    
else
    wget https://ftp.mozilla.org/pub/firefox/releases/90.0/linux-x86_64/en-US/firefox-90.0.tar.bz2
    # uncompress
    tar -xvf firefox-90.0.tar.bz2
fi

# Compile P1 contention script
clang -O0 -o p1_contention contention.c
clang -O0 -o p5_contention contention.p5.c

# Setup the selenium script

# Setup 1...only the instructions

# Setup 2, instructions and P1 block

# Setup 3, instructions and P5 block

# Setup 4, randomize the Wasm file on each HTTP request already set with that instruction, P1 block.

# Call firefox from here