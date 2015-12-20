#!/bin/bash

function clean() {
  # docker rm -f meteor-app
  # docker rmi -f meteor-app-image
  rm -rf hello
}

cd /tmp
clean

meteor create hello
cd hello
# try to add and remove a package
meteor add velocityjs:velocityjs
meteor remove velocityjs:velocityjs

clean
