export BPS_DEV_CC="/opt/rh/devtoolset-2/root/usr/bin/gcc"
export BPS_DEV_CXX="/opt/rh/devtoolset-2/root/usr/bin/g++"
export BPS_DEV_BUILD_DBG="Debug"
export BPS_DEV_BUILD_REL="RelWithDebInfo"
export BPS_DEV_CCLS_ROOT=".ccls-root"
export BPS_DEV_CCLS_CACHE=".ccls-cache"
export BPS_DEV_CCLS_BUILD_DIR=".build-ccls"
export PATH="/opt/rh/sclo-git212/root/usr/bin:$PATH"
export VORAK_BOX_USERNAME="phillip.bonhomme"
export VORAK_BOX_ADDR="35.235.101.45"
alias ssh-vorak="ssh $VORAK_BOX_USERNAME@$VORAK_BOX_ADDR"
alias gdb='/opt/rh/devtoolset-8/root/usr/bin/gdb'

rsync-vorak() {
    rsync -v -a ssh $1 $VORAK_BOX_USERNAME@$VORAK_BOX_ADDR:/home/$VORAK_BOX_USERNAME/rsync.here
}

svnaddtxt() {
    for var in $@
    do
        svn add ${var}; svn propset svn:mime-type text/plain ${var} && svn propset svn:eol-style native ${var} && svn propset svn:keywords 'Author Date Id Revision URL Header' ${var}
    done
}

svnst() {
    svn status -q
}

svnup() {
    svn up && svn up
}

svnbranchname() {
    svn info | grep '^URL:' | egrep -o '(branches\/phillip)/[^/]+|trunk' | egrep -o '[^/]+$'
}

runbpsdbg() {
    export BPS_BRANCH_NAME=svnbranchname; export BPS_DEV_LOCAL_BUILD=$PWD/$BPS_DEV_BUILD_DBG; $BPS_DEV_LOCAL_BUILD/Install/BluePearlCLI -output results.${BPS_BRANCH_NAME}-64 -verbosity 3 -tcl $1 -e "BPS::run analyze -forceload" -e exit -noexitontclerror; unset BPS_DEV_LOCAL_BUILD; unset BPS_BRANCH_NAME
}

prepcmake() {
    rm -rf $BPS_DEV_BUILD_DBG
}

cmakesetupdbg() {
    scl enable devtoolset-2 'cmake -H. -B$BPS_DEV_BUILD_DBG -DCMAKE_BUILD_TYPE=$BPS_DEV_BUILD_DBG'
}

bpsprojdbg() {
    prepcmake; cmakesetupdbg
}

cmakebuilddbg() {
    cmake --build $BPS_DEV_BUILD_DBG -- -j4
}

cmaketestdbg() {
    cmake --build $BPS_DEV_BUILD_DBG -- test
}

prepccls() {
    rm $BPS_DEV_CCLS_ROOT; rm -rf $BPS_DEV_CCLS_BUILD_DIR; rm -rf  $BPS_DEV_CCLS_CACHE
}

cmakesetupccls() {
    scl enable devtoolset-2 'cmake -H. -B$BPS_DEV_CCLS_BUILD_DIR -DCMAKE_BUILD_TYPE=$BPS_DEV_BUILD_REL -DCMAKE_EXPORT_COMPILE_COMMANDS=1'
}

bpsprojprep() {
    export BPS_DEV_CCLS_INIT="{ \"cache\": { \"directory\": \"$BPS_DEV_CCLS_CACHE\" }, \"compilationDatabaseDirectory\": \"$BPS_DEV_CCLS_BUILD_DIR\" }"; prepccls; cmakesetupccls && touch $BPS_DEV_CCLS_ROOT && ccls --index=$PWD --init=$BPS_DEV_CCLS_INIT; unset BPS_DEV_CCLS_INIT
}

# runbpsunittest() {
#     ./$1 --gtest-filter=*$2
# }
