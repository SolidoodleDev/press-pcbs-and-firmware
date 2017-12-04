@echo off
echo Connect USB to board

:UploadFirmware
hid_bootloader_cli -mmcu=at90usb1286 -w -v SolidoodlePress_03242015.cpp.hex
echo okay to disconnect
pause

call:UploadFirmware

