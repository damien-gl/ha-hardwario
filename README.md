# Hardwario-BCG
Home Assistant add-on to support Hardwario (www.hardwario.com) USB radio dongle

Main documentation of the Hardwario USB dongle is available here https://tower.hardwario.com/en/latest/tools/hardwario-gateway/

Forked from https://github.com/MarianRychtecky/ha-hardwario

## Installation
### Step 1 - Install the add-on
 Go to the Home Assistant Add-on section Configuration -> Add-ons - click Add-on store (downright hand side) - click three dots in the upper corner - Repositories. Insert https://github.com/damien-gl/ha-hardwario and click Add. This process will take about 2 minutes.

### Step 2 - Configuration
 When the installation is done, click on "Hardwario BCG" add-on -> Configuration. Fill in all values as per your installation and click Save. Optionally you can select DEBUG mode.

### Step 3 - Running
 Start the add-on and look at the log messages for more information.

### Step 4 - Start pairing via MQTT
 Via a MQTT Client send a message with topic: `gateway/usb-dongle/pairing-mode/start` to enable pairing.

### Step 5 - Start/Restart your Hardwario devices
Disconnect power from your devices (remove batteries or Battery Module, disconnect the USB cable, remove DC jack from Power Module)

### Step 6 - Get list of paired devices
Via a MQTT Client send a message with topic: `gateway/usb-dongle/nodes/get` 
See https://docs.hardwario.com/tower/mqtt-protocol/topics-reference for more info.

### Step 7 - Stop pairing via MQTT
Via a MQTT Client send a message with topic: `gateway/usb-dongle/pairing-mode/stop` to stop pairing.
