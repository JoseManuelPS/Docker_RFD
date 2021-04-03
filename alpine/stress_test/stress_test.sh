#!/bin/bash
###############################################################################
##        Name: stress_test.sh                                                #
##        Date: 18/11/2020                                                    #
##     Version: v1.0                                                          #
## Description: Simple script for test CPU/RAM/NETWORK/STORAGE stats.         #
##----------------------------------------------------------------------------#
##      Values: -> STTIME                                                     #
##----------------------------------------------------------------------------#
##      Editor: José Manuel Plana Santos                                      #
##     Contact: dev.josemanuelps@gmail.com                                    #
###############################################################################



# Script information.
scriptName="stress_test.sh"
scriptVersion="v1.0"

# Script directories.
scriptPath=$(cd $(dirname $0) ; pwd -P)/

# User information.
logUser=$(logname)
if [ "$logUser" == "root" ]; then
  logUser_Home="/root/"
else
  logUser_Home="/home/$logUser/"
fi
execUser=$(whoami)
execUser_Home="$(echo $HOME)"

# Common strings.
tab="---> "
title="Loading $scriptName $scriptVersion...\n\n"



Main () {

  clear -x
  echo -e $title

  # Directory change to the directory where the script is executed.
  cd $scriptPath

  # Process interrupt or <(CTRL + C)> combination captured.
  trap 'Catch' SIGINT

  # Checking the script execution as root user.
  Check_Root

  # Checking script dependencies.
  Check_Dependencies

  # Load: CPU
  Load_CPU

  # Load: RAM
  Load_RAM

  # Load: Network
  Load_Network

  # Load: Storage
  Load_STORAGE

  if [ "$errors" != "" ]; then
    Catch
  fi

  exit 0
}

Load_CPU () {

  echo "###########  START CPU TESTS  ###########"
  echo "[Single-Core Tests]"

  echo -e "\nRunning at 25% - $STTIME seconds"
  uptime
  stress-ng -c 1 -l 25 -t $STTIME
  uptime

  echo -e "\nRunning at 50% - $STTIME seconds"
  uptime
  stress-ng -c 1 -l 50 -t $STTIME
  uptime

  echo -e "\nRunning at 100% - $STTIME seconds"
  uptime
  stress-ng -c 1 -l 100 -t $STTIME
  uptime

  echo -e "\n[Multi-Core Tests]"

  echo -e "\nRunning with 2 Cores - $STTIME seconds"
  uptime
  stress-ng -c 2 -t $STTIME
  uptime

  echo -e "\nRunning with 4 Cores - $STTIME seconds"
  uptime
  stress-ng -c 4 -t $STTIME
  uptime

  echo -e "\n############  END CPU TESTS  ############"
}



Load_RAM () {

  echo -e "\n\n###########  START RAM TESTS  ###########"

  echo -e "\nReserving 16Mb - $STTIME seconds"
  uptime
  stress-ng -m 1 --vm-bytes 16M -t $STTIME
  uptime

  echo -e "\nReserving 128Mb - $STTIME seconds"
  uptime
  stress-ng -m 1 --vm-bytes 128M -t $STTIME
  uptime

  echo -e "\nReserving 256Mb - $STTIME seconds"
  uptime
  stress-ng -m 1 --vm-bytes 256M -t $STTIME
  uptime

  echo -e "\nReserving 512Mb - $STTIME seconds"
  uptime
  stress-ng -m 1 --vm-bytes 512M -t $STTIME
  uptime

  echo -e "\nReserving 1Gb - $STTIME seconds"
  uptime
  stress-ng -m 1 --vm-bytes 1024M -t $STTIME
  uptime

  echo -e "\n############  END RAM TESTS  ############"
}



Load_NETWORK () {

  echo -e "\n\n###########  START NETWORK TESTS  ###########"

  echo -e "\nGenerating trafic - $STTIME Times"
  uptime
  ping -c $STTIME www.google.es
  uptime

  echo -e "\n############  END NETWORK TESTS  ############"
}



Load_STORAGE () {

  echo -e "\n\n###########  START STORAGE TESTS  ###########"

  echo -e "\nReserving 16Mb - $STTIME seconds"
  uptime
  dd if=/dev/zero of=/tmp/loadfile16 bs=1M count=16
  dd if=/dev/zero of=/tmp/loadfile16 bs=1M count=16; sleep $STTIME
  uptime

  echo -e "\nReserving 128Mb - $STTIME seconds"
  uptime
  dd if=/dev/zero of=/tmp/loadfile128 bs=1M count=128
  dd if=/dev/zero of=/tmp/loadfile128 bs=1M count=128; sleep $STTIME
  uptime

  echo -e "\nReserving 256Mb - $STTIME seconds"
  uptime
  dd if=/dev/zero of=/tmp/loadfile256 bs=1M count=256
  dd if=/dev/zero of=/tmp/loadfile256 bs=1M count=256; sleep $STTIME
  uptime

  echo -e "\nReserving 512Mb - $STTIME seconds"
  uptime
  dd if=/dev/zero of=/tmp/loadfile512 bs=1M count=512
  dd if=/dev/zero of=/tmp/loadfile512 bs=1M count=512; sleep $STTIME
  uptime

  echo -e "\nReserving 1Gb - $STTIME seconds"
  uptime
  dd if=/dev/zero of=/tmp/loadfile1024 bs=1M count=1024
  dd if=/dev/zero of=/tmp/loadfile1024 bs=1M count=1024; sleep $STTIME
  uptime

  echo -e "\n############  END STORAGE TESTS  ############"
}



###############################################################################
## Auxiliary methods. #########################################################
###############################################################################

# Process interrupt or <(CTRL + C)> combination captured.
Catch () {

  if [ "$errors" != "" ]; then
    echo -e $errors
    exit 1
  fi

  clear -x
  echo -e "\nThe script $scriptName has been forced to close..."
  exit 1
}

# Checking the script execution as root user.
Check_Root () {

  if [ "$execUser" != "root" ]; then
    errors=$errors$tab"The $scriptName must be run as root, please try again.\n"
    Catch
  fi
}

# Checking script dependencies.
Check_Dependencies () {

  # Checking binary of the dependencie.
  checkBinary=$(which stress-ng | wc -l)

  # Actions in case of not finding it.
  if [ $checkBinary -eq 0 ]; then
    errors=$errors$tab"The system does not have the stress-ng binary. Please install the tool and try again.\n"
    Catch
  fi
}



###############################################################################
## Execution. #################################################################
###############################################################################

# Script execution start.
Main


