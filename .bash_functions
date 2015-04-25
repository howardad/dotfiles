#
# ~/.bash_functions
#

# Set up the environment for building AOSP from source
android-build-env () {
    echo -e "${BGreen}Setting up \$PATH"
    export PATH="/opt/android-build:$PATH"

    # Java6
    echo -e "${BGreen}Setting up Java 6"
    source /opt/sun-java6/envsetup.sh

    # CCACHE
    echo -e "${BGreen}Setting up ccache"
    export USE_CCACHE=1
    export CCACHE_DIR=~/android/.ccache
    ~/android/prebuilts/misc/linux-x86/ccache/ccache -M 50G

    echo -e "${BGreen}Changing directory"
    cd $AOSPSRCDIR
    export PATH="$AOSPSRCDIR/prebuilts/gcc/linux-x86/arm/arm-eabi-4.7/bin/:$PATH"
    
    echo -e "${BGreen}Setting up build environment variables"
    export ARCH=arm
    export SUBARCH=arm
    export CROSS_COMPILE=arm-eabi-
    
    echo -e "${BGreen}Sourcing Android functions${Color_Off}"
    source $AOSPSRCDIR/build/envsetup.sh

    echo
    echo -e "${BBlack On_IGreen}### AOSP Build Environment ###"
    echo
}

# Remove Steam-shipped libs that are out-of-date and screwing up OpenGL
fix-steam () {
    echo "Deleting conflicting libs..."
    rm -f ~/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/i386-linux-gnu/libstdc++.so.6
    rm -f ~/.local/share/Steam/ubuntu12_32/steam-runtime/i386/lib/i386-linux-gnu/libgcc_s.so.1
    rm -f ~/.local/share/Steam/ubuntu12_32/steam-runtime/amd64/lib/x86_64-linux-gnu/libgcc_s.so.1
    rm -f ~/.local/share/Steam/ubuntu12_32/steam-runtime/amd64/usr/lib/x86_64-linux-gnu/libstdc++.so.6
    rm -f ~/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/i386-linux-gnu/libxcb.so.1
    echo "done."
}

# Homework submission for Coursera Coding the Matrix
#matrix-submit () {
#    export COURSERA_EMAIL=howardad@gmail.com
#    export COURSERA_PASS=PM8dyJctyV
#    python3 $1 --colorize --https --email howardad@gmail.com --password PM8dyJctyV
#}
