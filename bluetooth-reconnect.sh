#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Bluetooth Reconnect
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description Opencomm Reconnect

# Check if blueutil command exists
if ! command -v blueutil &> /dev/null; then
    echo "blueutil command not found. Please install blueutil."
    exit 1
fi

DEVICE_ADDRESS="Your Bluetooth Device Address."

# Disconnect from the device
blueutil --disconnect "$DEVICE_ADDRESS"

# Wait for 1 seconds before connecting again
sleep 1 

# Connect to the device
blueutil --connect "$DEVICE_ADDRESS"
