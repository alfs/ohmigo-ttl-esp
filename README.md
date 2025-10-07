# ohmigo-ttl-esp

Ohmigo.TTL control via ESPHome with custom 3D-printed enclosure.

## Project Overview

This project provides:
- ESPHome firmware configuration for ESP32-based TTL control
- 3D-printable enclosure design using OpenSCAD YAPP Box

## Directory Structure

```
├── esphome/          # ESPHome configuration files
│   ├── ohmigo-ttl.yaml
│   ├── secrets.yaml.example
│   └── README.md
├── enclosure/        # 3D enclosure design files
│   ├── ohmigo-ttl-enclosure.scad
│   └── README.md
└── README.md         # This file
```

## Quick Start

### ESPHome Setup

1. Navigate to the `esphome/` directory
2. Follow the instructions in [esphome/README.md](esphome/README.md)
3. Flash the firmware to your ESP32 board

### 3D Enclosure

1. Navigate to the `enclosure/` directory
2. Follow the instructions in [enclosure/README.md](enclosure/README.md)
3. Generate STL files and 3D print the enclosure

## Hardware Requirements

- ESP32 development board (80mm × 25mm × 15mm)
- USB-C cable for programming and power
- 3D printer for enclosure fabrication

## Features

### ESPHome Firmware
- WiFi connectivity with fallback AP mode
- Home Assistant integration
- OTA firmware updates
- Web-based control interface
- TTL output control via GPIO pins

### 3D Enclosure
- Custom-fit design for 80mm × 25mm ESP32 board
- USB-C connector access
- Cable routing opening (3mm × 8mm)
- Ventilation holes for cooling
- Snap-fit assembly

## Documentation

For detailed information, see the README files in each directory:
- [ESPHome Configuration Guide](esphome/README.md)
- [3D Enclosure Design Guide](enclosure/README.md)

## License

This project is open source. Please check individual file headers for specific license information.
