#!/bin/sh
cd `dirname $0`
erl -pa $PWD/ebin -pa $PWD/deps/*/ebin -sname template -s reloader -boot template $1