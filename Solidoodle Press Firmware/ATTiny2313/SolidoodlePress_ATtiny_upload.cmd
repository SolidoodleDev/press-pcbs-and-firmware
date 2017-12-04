@echo off
echo Connect USBtiny to board

:UploadFirmware
avrdude -D -c usbtiny -p attiny2313 -e
avrdude -D -c usbtiny -p attiny2313 -U flash:w:PressButtonFirmware_11022014.cpp.hex:i
echo okay to disconnect
pause

call:UploadFirmware






