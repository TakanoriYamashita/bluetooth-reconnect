## Reconnect Bluetooth Script
Frequent issue with the OpenComm headset not producing sound when connected to a Mac.  
Reconnecting resolves the issue, so a batch script was created to disconnect and reconnect.  
This script can also be executed from Raycast.

## Installation
1. Install `blueutil` using Homebrew:

```bash
brew install blueutil
```

2. Find the target Bluetooth address:
```bash
blueutil --paired
```

## Usage

1. Edit the script and replace the `DEVICE_ADDRESS` variable with your device's Bluetooth address.
```bash
DEVICE_ADDRESS="Your Bluetooth Device Address."
## e.g. "20-74-cf-xx-xx-xx"
```

2. Save the script as `bluetooth-reconnect.sh` and make it executable:
```bash
chmod +x bluetooth-reconnect.sh
```

3. Run script from terminal and verify functionality:
```bash
./bluetooth_reconnect.sh
```

## raycast
If you want to use it in raycast, open this repository folder from `Add Script Directory` in Raycast Settings.