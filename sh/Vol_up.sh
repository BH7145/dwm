#!/bin/bash
amixer -qM set Master 5%+ umute
Vo=$(amixer get Master | awk -F'[][]' 'END{ print $4":"$2 }' | awk -F: '{print$2}')
xsetroot -name "🔊 ${Vo}"
