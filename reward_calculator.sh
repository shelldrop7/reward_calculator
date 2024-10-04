#!/usr/bin/env bash
#
#
#		Reward Calculator
#
#
#			chmod				chmod +x reward_calculator.sh
#
#			run				./reward_calculator.sh
#
#


   rewardcalc() {
      clear
      echo -e "\n"
      echo -e "\t Reward Calculater"
      echo -e "\n\t\t"
      echo -n -e "\t\t Amount \t -> "
      read amount
      echo -n -e "\t\t Reward % \t -> "
      read reward

      a=$amount
      b=$reward

      year=$(echo "scale=6; ($a/100)*$b" | bc -l | sed "s/^\(-\)\?\./\10./" )
      month=$(echo "scale=6; ($a/100)*$b/12" | bc -l | sed "s/^\(-\)\?\./\10./" )
      day=$(echo "scale=6; ($a/100)*$b/365" | bc -l | sed "s/^\(-\)\?\./\10./" )
      hour=$(echo "scale=6; ($a/100)*$b/8760" | bc -l | sed "s/^\(-\)\?\./\10./" )

      echo -e "\n\t\t Year \t\t $year"
      echo -e "\t\t Month \t\t $month"
      echo -e "\t\t Day \t\t $day"
      echo -e "\t\t Hour \t\t $hour"
      echo -e "\n\n"

      read dummy
      clear
   }
   rewardcalc


# End
#
#
