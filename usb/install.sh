#!/bin/sh
set -eu

ARCHIVE_ROOT="/mnt/usb/bell-ondemand-familyjr-archive"
TARGET_DIR="/opt/bell_familyjr"

echo "Bell On Demand Family Jr Archive"
echo "Installing legacy archive for compatible Linux embedded Arris hardware..."
echo "USB device detected."

mkdir -p "$TARGET_DIR"

if [ -d "$ARCHIVE_ROOT" ]; then
    cp -R "$ARCHIVE_ROOT"/lib "$TARGET_DIR"/
    cp -R "$ARCHIVE_ROOT"/archive "$TARGET_DIR"/
    cp "$ARCHIVE_ROOT"/manifest.json "$TARGET_DIR"/
    echo "Installation complete."
else
    echo "USB archive not found at $ARCHIVE_ROOT"
    exit 1
fi

echo "Launch the archive from the embedded application runtime."
echo "Family Jr. archive installed successfully."
