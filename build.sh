#!/bin/bash

complie_condition=$1
debug="debug"
release="release"

if [ ! -d "build" ]; then
	mkdir build && cd build
else 
	cd build
fi

if [ "$complie_condition" = "$debug" ]; then 
	if [ ! -d "debug" ]; then
		mkdir debug && cd debug
	else 
		cd debug
	fi
	cmake -DCMAKE_BUILD_TYPE=Debug ../..
	make -j 4
	cd ../../out/bin
	cp TinyStl ../../

elif [ "$complie_condition" = "$release" ]; then
	if [ ! -d "release" ]; then
		mkdir release && cd release
	else
		cd release
	fi
	cmake -DCMAKE_BUILD_TYPE=Release ../..
	make -j 4
	cd ../../out/bin
	cp TinyStl ../../

else
	echo "Usage: ./build.sh debug | release"
fi
