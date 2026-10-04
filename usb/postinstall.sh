#!/bin/sh
set -eu

ARCHIVE_ROOT="/mnt/usb/bell-ondemand-familyjr-archive"
TARGET_DIR="/opt/bell_familyjr"
EMBY_DIR="/opt/emby"
EMBY_PLUGINS_DIR="${EMBY_DIR}/plugins"
EMBY_CONFIG_DIR="${EMBY_DIR}/config"
EMBY_METADATA_DIR="${EMBY_DIR}/metadata"

echo "=========================================================="
echo "Bell On Demand Family Jr Archive - USB Installer"
echo "With Emby Media Server Integration"
echo "=========================================================="
echo ""
echo "Installing legacy archive for compatible Linux embedded Arris hardware..."
echo "USB device detected."
echo ""

mkdir -p "$TARGET_DIR"
mkdir -p "$EMBY_DIR"
mkdir -p "$EMBY_PLUGINS_DIR"
mkdir -p "$EMBY_CONFIG_DIR"
mkdir -p "$EMBY_METADATA_DIR"

if [ ! -d "$ARCHIVE_ROOT" ]; then
    echo "ERROR: USB archive not found at $ARCHIVE_ROOT"
    exit 1
fi

echo "[1/5] Copying archive library files..."
if [ -d "$ARCHIVE_ROOT/lib" ]; then
    cp -R "$ARCHIVE_ROOT"/lib "$TARGET_DIR"/
    echo "✓ Library files installed"
fi

echo "[2/5] Copying catalog metadata..."
if [ -d "$ARCHIVE_ROOT/archive" ]; then
    cp -R "$ARCHIVE_ROOT"/archive "$TARGET_DIR"/
    echo "✓ Catalog metadata installed"
fi

echo "[3/5] Copying manifest configuration..."
if [ -f "$ARCHIVE_ROOT/manifest.json" ]; then
    cp "$ARCHIVE_ROOT"/manifest.json "$TARGET_DIR"/
    echo "✓ Manifest installed"
fi

echo "[4/5] Setting up Emby media server integration..."
if [ -d "$ARCHIVE_ROOT/emby" ]; then
    if [ -d "$ARCHIVE_ROOT/emby/plugins" ]; then
        cp -R "$ARCHIVE_ROOT"/emby/plugins/* "$EMBY_PLUGINS_DIR"/ 2>/dev/null || true
    fi

    if [ -d "$ARCHIVE_ROOT/emby/config" ]; then
        cp -R "$ARCHIVE_ROOT"/emby/config/* "$EMBY_CONFIG_DIR"/ 2>/dev/null || true
    fi

    if [ -d "$ARCHIVE_ROOT/emby/metadata" ]; then
        cp -R "$ARCHIVE_ROOT"/emby/metadata/* "$EMBY_METADATA_DIR"/ 2>/dev/null || true
    fi

    echo "✓ Emby media server integration complete"
else
    echo "WARNING: Emby directory not found on USB - archive may be incomplete"
fi

echo "[5/5] Finalizing installation..."
if [ -f "$ARCHIVE_ROOT/usb/postinstall.sh" ]; then
    sh "$ARCHIVE_ROOT/usb/postinstall.sh"
fi

echo ""
echo "=========================================================="
echo "Installation Summary"
echo "=========================================================="
echo "Archive Location: $TARGET_DIR"
echo "Emby Media Server: $EMBY_DIR"
echo "Emby Plugins: $EMBY_PLUGINS_DIR"
echo "Emby Config: $EMBY_CONFIG_DIR"
echo "Emby Metadata: $EMBY_METADATA_DIR"
echo ""
echo "✓ Installation complete."
echo ""
echo "Next steps:"
echo "1. Ensure the Emby media server is installed on the embedded device"
echo "2. Launch the Bell Family Jr archive from the embedded application runtime"
echo "3. Let the archive use Emby as the backend media server"
echo "4. Point the media library to the installed Family Jr archive metadata"
echo ""
echo "Legacy Bell Family Jr archive ready for embedded device launch."
echo "This package is intended for compatible Linux embedded Arris hardware."
echo "=========================================================="
