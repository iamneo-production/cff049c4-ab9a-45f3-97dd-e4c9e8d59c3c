#!/bin/bash

if [ -d "/home/coder/project/workspace/angularapp" ]
then
    echo "project folder present"
    cp /home/coder/project/workspace/karma/karma.conf.js /home/coder/project/workspace/angularapp/karma.conf.js;


    # checking for admin component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/home" ]
    then
        cp /home/coder/project/workspace/karma/home.component.spec.ts /home/coder/project/workspace/angularapp/src/app/home/home.component.spec.ts;
    else
        echo "home_component FAILED";
    fi

    # checking for login component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/customer" ]
    then
        cp /home/coder/project/workspace/karma/customer.component.spec.ts /home/coder/project/workspace/angularapp/src/app/customer/customer.component.spec.ts;
    else
        echo "customer_component FAILED";
    fi

    # checking for signup component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/login" ]
    then
        cp /home/coder/project/workspace/karma/login.component.spec.ts /home/coder/project/workspace/angularapp/src/app/login/login.component.spec.ts;
    else
        echo "login_component FAILED";
    fi

    cd /home/coder/project/workspace/angularapp/;
    npm test;
else   
    echo "home_component FAILED";
    echo "customer_component FAILED";
    echo "login_component FAILED";
fi
