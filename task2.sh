#!/bin/bash
grep -l "sample" dataset1/* | xargs -I {} sh -c 'if [ $(grep -o "CSC510" {} | wc -l) -ge 3 ]; then echo {}; fi'