#!/bin/sh

if test ! $(which jenv); then
    echo "  Installing jenv for you."
    brew install jenv >/tmp/jenv-install.log
    jenv enable-plugin export
    jenv enable-plugin maven
fi

echo "  Installing java and java11 for you."
brew install java java11 >/tmp/java-install.log

# jenv add .......