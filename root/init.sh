#!/bin/sh

getTrackerList() {
    tracker=$( \
        curl -sL https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_best.txt \
            | xargs \
            | sed 's/ /,/g' \
            | sed 's/\//\\\//g' \
    )
    printf ${tracker}
}

if [[ ! -e /config/aria2.session ]]
then
  touch /config/aria2.session
fi

cat /config/aria2.conf \
    | sed 's/${tracker}/'$(getTrackerList)'/' \
    > aria2.conf

aria2c --conf-path=aria2.conf
