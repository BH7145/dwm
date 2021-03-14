#!/bin/bash
while true
do
#时间
dwm_date () {
		printf "$(date +%Y.%m.%d' ⏰'%H:%M)"
}
#电量
dwm_acpi () {
      dl=$(acpi | awk -F", " '{print $2}' )
	    if (acpi -a |grep -q on);then
					echo 🔌;
 			else
					echo 🔋$dl;
		fi
}
xsetroot -name "$(dwm_acpi)  📅$(dwm_date)"
sleep 30
done
