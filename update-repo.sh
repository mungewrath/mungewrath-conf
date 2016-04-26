#!/bin/bash
git add .
git commit -a || { echo 'git commit failed' ; exit 1; }
git push
