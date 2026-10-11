# ScreenResChanger

This repository contains a jailbreak package skeleton for an iOS 16+ screen-resolution selector intended to appear in Settings.

Important:
- This is a package scaffold and prototype, not a verified production jailbreak tweak.
- Real iOS screen-resolution changes require a working jailbreak environment, custom tweak code, and device-specific testing.
- The package here is designed to demonstrate a .deb layout, a Settings entry, and a build flow for a custom tweak project.

Repository structure:
- `package/DEBIAN/` — Debian package metadata and install scripts
- `package/usr/bin/` — command-line helper
- `package/Library/PreferenceLoader/Preferences/` — Settings page bundle and plist entries
- `Makefile` — builds a `.deb` package

Build:

```bash
make
```

This produces a file like:

```bash
build/com.mikhailapanyuk.screenreschanger_1.0_iphoneos-arm.deb
```

For a real tweak, this needs to be adapted to the target jailbreak platform (e.g. Theos/Procursus, Sileo, Zebra, or another iOS jailbreak environment).
