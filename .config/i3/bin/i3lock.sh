#!/usr/bin/env bash

## i3lock for bspwm for Archcraft OS.

## Get colors -----------------
FG="#B3B1AD"
BG="#0A0E14"

BLACK="#01060E"
RED="#EA6C73"
GREEN="#91B362"
YELLOW="#F9AF4F"
BLUE="#53BDFA"
MAGENTA="#FAE994"
CYAN="#90E1C6"
WHITE="#C7C7C7"

TOTD=`fortune -n 90 -s | head -n 1`

## Exec	-----------------
i3lock \
--color="${BG}D9"			\
\
--insidever-color=${GREEN}	\
--insidewrong-color=${RED}	\
--inside-color="${BG}00"	\
\
--ringver-color=${GREEN}	\
--ringwrong-color=${RED}	\
--ring-color=${BLUE}		\
\
--line-color=${BG}			\
--separator-color=${BG}		\
\
--keyhl-color=${YELLOW}		\
--bshl-color=${RED}			\
\
--verif-color=${BG}			\
--wrong-color=${FG}			\
--layout-color=${FG}		\
\
--time-color=${FG}			\
--date-color=${FG}			\
\
--pass-media-keys			\
--pass-screen-keys			\
--pass-power-keys			\
--pass-volume-keys			\
--{time,date,layout,verif,wrong,greeter}-font="Monaco"			\
--{layout,verif,wrong,greeter}-size=18							\
--time-size=34													\
--date-size=18													\
--greeter-text="${TOTD}"			\
--greeter-color=${RED}				\
--verif-text="verifying..."			\
--wrong-text="wrong!"				\
--noinput-text="Empty"				\
--lock-text="Locking..."			\
--lockfailed-text="Failed to lock"	\
--radius 120				\
--ring-width 8.0			\
--screen 1					\
--clock						\
--indicator					\
--time-str="%I:%M %p"		\
--date-str="%b %d, %G"		\
--blur 10					\
