#!/bin/sh
if [ -z $1 ]; then
echo "Usage: raw.sh image [snapshot]"
elif [ -z $2 ]; then
/home/ais3/crax/build/qemu-release/i386-softmmu/qemu-system-i386 -hda $S2EDIR/img/$1 -monitor stdio -net none
else
/home/ais3/crax/build/qemu-release/i386-softmmu/qemu-system-i386 -hda $S2EDIR/img/$1 -loadvm $2 -monitor stdio -net none
fi
