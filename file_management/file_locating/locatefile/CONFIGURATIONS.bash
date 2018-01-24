#!/usr/bin/env bash
# 
# File:
#   CONFIGURATIONS.bash
# 
# Description:
#   Configurations for scripts in this directory
# 
# Note:
#   Variable "HERE" is defined in the sourcing scripts (locatefile and updatedb)
#   and is assigned the path to the current directory.
# 

# Directory for file paths database files
FILE_PATHS_DB_DIR="${HERE}/filesdb"

# Directory for directory paths database files
DIR_PATHS_DB_DIR="${HERE}/dirsdb"

# File names to use in both database directories; note: these files will be
# searched in the given order in both databases.
DB_FILE_NAMES=('mount-drive-1-paths' 'mount-drive-2-paths' 'home-paths')

# Paths of mounted drives containing files to be located
# When a databse file or directory path begins with "{MNTPNT_PATH}/", these
# paths will traversed through in place of the "{MNTPNT_PATH}" placeholder until
# the file or directory is found. Database paths beginning with "{MNTPNT_PATH}/"
# are created when a database file/directory output path defined in updatedb is
# prefixed with one of these paths.
MNTPNT_PATHS=(
  '/mnt/usb1'
  '/mnt/usb2'
  '/mnt/usb3'
  '/mnt/usb4'
)
