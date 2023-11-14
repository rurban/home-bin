#!/bin/sh

git_bug_upd () {
    git bug bridge pull
    git bug push
}
cd $HOME/Software
# ls */.git/git-bug
LIST="libredwg ctl smhasher dieharder safeclib potion p2"
for d in $LIST
do
    cd $d && git_bug_upd && cd ..
done
cd -

cd $HOME/Perl
# ls */.git/git-bug
LIST="Net-Ping Set-Object Cpanel-JSON-XS GD p6/parrot-git B-C Filter \
      re-engine-PCRE2 Compress-Bzip2 B-Stats B-Keywords Opcodes \
      YAML-Safe App-perlall B-Debug"
for d in $LIST
do
    cd $d && git_bug_upd && cd ..
done
cd -

cd /usr/src/cperl
git_bug_upd
cd -
