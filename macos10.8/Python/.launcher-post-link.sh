#!/bin/bash

# Remove old Launcher.app if it exists
rm -rf $HOME/Desktop/Launcher.app
rm -rf $PREFIX/Launcher.app

cp -r $PREFIX/launcherapp $PREFIX/Launcher.app
rm -rf $PREFIX/launcherapp

EXEC=$PREFIX/Launcher.app/Contents/MacOS/Launcher

ln -s -f $PREFIX/Launcher.app $HOME/Desktop/ || exit 0
