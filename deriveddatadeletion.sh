#!/bin/bash 
#Deleting derived data
    #Declare the initial directory as a global variable
    INITIAL_DIR=$PWD

    #Navigate to Derived Data
    cd ~/Library/Developer/Xcode/DerivedData

    #The loop continues until no file remains until no files left
    data=1
    while [ $data -gt 0 ]; do
        #Recursively delete the directory files
        rm -rf *

        #Update file count
        data =`ls | wc -l`
    done

    echo Done

    #Go back to starting dir
    cd $INITIAL_DIR