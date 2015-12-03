#!/bin/sh
##################################################
# Name: $1
# Description: Does a backup of your MySQL Database utilizng LVM Snapshot.
# Script Maintainer: Le Duc Hoang
#
# Last Updated: August 8th 2013
##################################################
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin
##################################################
# Variables
#
user=$LOGNAME
password="password"
datadir="/blah/important/"
tmpmountpoint="/mnt/temp_mount"
dstdir="/blah/backups/mysql_backups/"
##################################################
# Set Level of organization wanted
#
YEAR=`date +%Y`
MONTH=`date +%m`
#DAY=`date +%d`  
#TIME=`date +%k%M`