#!/bin/bash
git checkout master && git fetch britg && git rebase britg-mirror/master && git push origin master
git checkout chelu && git rebase master && git push -f origin chelu
