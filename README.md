# Bell On Demand Family Jr Archive

A historical library of Bell On Demand Family Jr application versions from 2015 through 2021.

This archive is intended as a legacy embedded-media package for Linux-based Arris IPTV boxes. It is designed to be installed from USB and launched on compatible embedded hardware as a historical channel/library interface rather than a normal desktop app.

Important:
- Intended for compatible Linux embedded Arris set-top boxes
- Intended to be loaded from USB storage
- Intended for archival and legacy compatibility use
- Not intended for general desktop or x86/x64 systems
- Designed to present historical on-demand content versions by year

## Scope

The archive contains yearly builds:
- 2015
- 2016
- 2017
- 2018
- 2019
- 2020
- 2021

Each year is a versioned snapshot of the Family Jr. library experience:
- channel catalog
- title list
- metadata
- year-specific content index
- compatibility metadata for older embedded firmware

## USB installation flow

1. Copy the `usb/` package to a USB stick.
2. Plug the USB stick into the compatible Arris Linux embedded device.
3. The loader detects the archive and mounts the package.
4. The system installs the selected year version into the device's application path.
5. The module loads as a native Linux shared library or embedded app bundle.
6. The user opens the archive and browses that year's Family Jr. library.

## Runtime target

This project is intended to be compiled for:
- Linux embedded environment
- Arris-compatible set-top hardware
- Shared-object or native app bundle deployment
- USB-mounted application installation

This package is intentionally not for:
- Windows
- macOS
- x86 Linux desktops
- Android devices
- general consumer PCs

## Layout

```text
bell-ondemand-familyjr-archive/
├── README.md
├── manifest.json
├── archive/
│   ├── 2015/
│   │   ├── metadata.json
│   │   └── catalog.json
│   ├── 2016/
│   │   ├── metadata.json
│   │   └── catalog.json
│   ├── 2017/
│   │   ├── metadata.json
│   │   └── catalog.json
│   ├── 2018/
│   │   ├── metadata.json
│   │   └── catalog.json
│   ├── 2019/
│   │   ├── metadata.json
│   │   └── catalog.json
│   ├── 2020/
│   │   ├── metadata.json
│   │   └── catalog.json
│   └── 2021/
│       ├── metadata.json
│       └── catalog.json
├── lib/
│   ├── bell_familyjr_2015.so
│   ├── bell_familyjr_2016.so
│   ├── bell_familyjr_2017.so
│   ├── bell_familyjr_2018.so
│   ├── bell_familyjr_2019.so
│   ├── bell_familyjr_2020.so
│   └── bell_familyjr_2021.so
├── usb/
│   ├── install.sh
│   ├── postinstall.sh
│   └── README.txt
├── src/
│   ├── loader.c
│   ├── catalog.h
│   ├── catalog.c
│   └── Makefile
└── docs/
    └── embedded-deployment-notes.md
```

## Example loader banner

> Bell On Demand Family Jr Archive
> Loading library version: 2021
> Compatible with Linux embedded Arris device
> Insert USB to install or browse historical archive

## Archive philosophy

This project preserves the old Bell Family Jr. on-demand service as a historical software archive. Each yearly build is treated as a distinct versioned package so the user can browse the service as it existed in that year.

The archive is not meant to replace the live service. It is meant to preserve the historical channel experience and provide a museum-style library of legacy versions.
to set this software up you need to get your local shows that where once on the network   you want you have to go to github download emby by media browser go to emby official website download linux mint build then put this repo in folder not a zip with the emby repo by media browser your episodes and the emby app and also format usb to fat that supports the bell box plug into your box restart  box and turn it on then click the unused pvr button and the on demand button 
