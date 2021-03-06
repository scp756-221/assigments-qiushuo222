#!/usr/bin/env bash

#
# This derives the canonical owner of a repo within the organization
# for the purpose of generating the hash code for Assignment 1-3
#
# This is necessary as a GitHub Education student's repo resides within the same organization as the instructor
#

reponame=${1}
repoowner=${2}

  # the literals below need to be adjusted when:
  #  1) the template repo (c756-exer) is renamed;
  #  1) the template repo resides in a different organization than scp756-221); or
  #  2) the assignment is renamed from "assigments". (yes... there is a typo)
if [[ ${reponame} = "scp756-221/c756-exer" ]]; then
  echo "canonical-owner="${repoowner}
else
  echo "canonical-owner="${reponame} | sed -e "s/scp756-221\/assigments-//" 
fi
