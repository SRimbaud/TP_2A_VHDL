#!/bin/bash

echo "Je suis michel et je vais m'exécuter !!"


vdel -lib  ${TP_PATH}/libs/lib_SYNTH -all

vlib ${TP_PATH}/libs/lib_SYNTH

vmap lib_SYNTH ${TP_PATH}/libs/lib_SYNTH 

vcom +acc -work lib_SYNTH filtre_synth.vhd 
